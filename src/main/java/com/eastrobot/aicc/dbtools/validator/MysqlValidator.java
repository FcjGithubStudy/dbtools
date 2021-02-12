package com.eastrobot.aicc.dbtools.validator;

import com.eastrobot.aicc.dbtools.config.DbToolsConfig;
import com.eastrobot.aicc.dbtools.constants.DbToolsConstants;
import com.eastrobot.aicc.dbtools.utils.ScriptUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.jdbc.support.rowset.SqlRowSetMetaData;

import java.io.IOException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 模块名称: Mysql数据库校验器
 * 模块描述: 校验mysql数据库中表结构完整性,缺表的自动添加表(并插入内置数据);缺字段的增加字段(但不会再插入内置数据);缺索引的自动加非主键索引
 *
 * @author xinchi.wang
 * @date 2020/8/5 10:48
 */
public class MysqlValidator {
    /**
     * 表名-列名专属转义符
     */
    private static final String DB_ESCAPE_CHARACTER = DbToolsConstants.DB_ESCAPE_CHARACTER_MYSQL;
    /**
     * 【表名-->建表语句】构成的Map
     */
    public Map<String, String> tableDDLMap = new LinkedHashMap<>();

    /**
     * 【表名-->建索引语句集合】构成的Map，子级Map以【索引名】为键，以【创建索引DDL语句】为值
     */
    public Map<String, Map<String, String>> indexDDLMaps = new LinkedHashMap<>();

    /**
     * 【表名-->添加列语句】构成的Map，子级Map以【列名】为键，以【新增列DDL语句】为值
     */
    public Map<String, Map<String, String>> columnDDLMaps = new LinkedHashMap<>();

    /**
     * 【表名-->插入初始内置数据语句】构成的Map
     */
    public Map<String, List<String>> insertDataDMLMap = new LinkedHashMap<>();

    /**
     * 【建表语句】构成的集合
     */
    public List<String> createTableSqlList = new ArrayList<>();

    /**
     * 【建索引语句】构成的集合
     */
    public List<String> createIndexSqlList = new ArrayList<>();

    /**
     * 【插入语句】构成的集合
     */
    public List<String> insertDataSqlList = new ArrayList<>();

    private static final Log log = LogFactory.getLog(MysqlValidator.class);
    // Java中正则表达式：https://www.jianshu.com/p/3c076c6b2dc8
    // Java 正则表达式：语法讲解和常用表达式汇总https://blog.csdn.net/weixin_44259720/article/details/88179885
    // Java 捕获组的概念：https://blog.csdn.net/zj_haha/article/details/16797439
    // Java 特殊字符转义：https://blog.csdn.net/w2222288/article/details/47299879
    /**
     * 表名正则表达式
     */
    private static final String tableNameRegex = "CREATE TABLE (\"|`)([^\"^`]+)(\"|`)";
    /**
     * 表名正则编译器：调用matcher(targetStr)方法可以生成相应的正则匹配器
     */
    private static final Pattern tablePtn = Pattern.compile(tableNameRegex);
    /**
     * 创建索引语句正则表达式
     * 备注：\s空白符，\S非空白符，所以[\s\S]是任意字符，\u0028表示【左圆括号】，\u0029表示【右圆括号】（记得转义）
     */
    private static final String indexRegex = "CREATE (INDEX |UNIQUE INDEX )([\\s\\S]+)( ON )([\\s\\S]+)( \\u0028)([\\s\\S]+)(\\u0029)";

    /**
     * 创建索引语句正则编译器：调用matcher(targetStr)方法可以生成相应的正则匹配器
     */
    private static final Pattern indexPtn = Pattern.compile(indexRegex);

    /**
     * 列名正则表达式
     * 正则是一门学问，越精确的正则写法越复杂，我暂时没想到更精确的写法，当前的这个【列名判断正则】，[表名]和[主键]也符合条件，会造成干扰，
     * 于是我采取的解决策略是，在逻辑中先排除表名和主键字段,再从剩下的sql中，用该正则去提取列名)
     */
    private static final String columnNameRegex = "(\"|`)([^\"^`]+)(\"|`)";
    /**
     * 列名正则编译器：调用matcher(targetStr)方法可以生成相应的正则匹配器
     */
    private static final Pattern columnPtn = Pattern.compile(columnNameRegex);

    /**
     * 列默认值正则表达式
     */
    private static final String defaultValueRegex = "(DEFAULT ')([^']+)(')";
    /**
     * 列默认值正则编译器：调用matcher(targetStr)方法可以生成相应的正则匹配器
     */
    private static final Pattern defaultValuePtn = Pattern.compile(defaultValueRegex);

    /**
     * 在列默认值中定义的英文逗号,标记占位符
     */
    public static final String commaInDefaultValue = "#@comma@#";
    /**
     * 插入内置数据正则表达式
     */
    private static final String insertDataRegex = "INSERT INTO (\"|`)([^\"^`]+)(\"|`) VALUES";
    /**
     * 插入内置数据编译器:调用matcher(targetStr)方法可以生成相应的正则匹配器
     */
    private static final Pattern insertDataPtn = Pattern.compile(insertDataRegex);

    /**
     * dbtools数据源相关配置类，在创建Validator对象时，由外部传入
     */
    private DbToolsConfig dbToolsConfig;

    /**
     * 构造方法
     *
     * @param dbToolsConfig dbtools配置项
     */
    public MysqlValidator(DbToolsConfig dbToolsConfig) {
        if (null == dbToolsConfig) {
            throw new RuntimeException("dbToolsConfig不允许为null");
        }
        this.dbToolsConfig = dbToolsConfig;
    }

    /************************************************** 对外公开的方法 **************************************************/
    /**
     * 初始化工具类:包含【解析指定sql脚本】与【封装指定变量】两个过程
     *
     * @throws IOException
     */
    public void init() throws IOException {
        log.info("<====== mysql校验器初始化开始 ======>");
        // 1.解析指定sql文件,将insert语句与create语句归类单独分离开,使得后续逻辑结构更加清晰
        classifySqls();
        // 2.初始化建表语句
        initTableDDL();
        // 3.初始化创建索引语句
        initIndexDDL();
        // 4.初始化插入内置数据语句
        initInterDataDML();
        log.info("<====== mysql校验器初始化结束 ======>");
    }


    /**
     * 校验表结构的方法
     *
     * @throws IOException
     */
    public void validateTables() {
        // 【防御机制】
        if (null == tableDDLMap || tableDDLMap.size() == 0) {
            throw new RuntimeException("调用validateTables方法前,请先调用init方法初始化校验器");
        }
        log.info("<====== 表结构校验开始 ======>");
        JdbcTemplate jdbcTemplate = dbToolsConfig.getJdbcTemplate();
        for (String tableName : tableDDLMap.keySet()) {
            // 一、判断目标表是否存在
            boolean isTableExist = true;
            try {
                jdbcTemplate.execute("select 1 from " + DB_ESCAPE_CHARACTER + tableName + DB_ESCAPE_CHARACTER + " where 1 = 2");
            } catch (BadSqlGrammarException e) {
                isTableExist = false;
            }
            if (isTableExist) {
                // 1.表存在,则校验表中字段完整性
                SqlRowSet sqlRowSet = jdbcTemplate.queryForRowSet("select * from " + DB_ESCAPE_CHARACTER + tableName + DB_ESCAPE_CHARACTER + " where 1 = 2");
                SqlRowSetMetaData metaData = sqlRowSet.getMetaData();
                Map<String, String> dbColumnNameMap = new HashMap<>(16);
                for (int i = 1; i <= metaData.getColumnCount(); i++) {
                    // 备忘:metaData的getColumnLabel返回【字段别名】,getColumnName方法则返回【原始字段名】,当联表查询时,如果两个表字段有重复,getColumnName底层的map会覆盖,导致问题
                    // 所以推荐使用getColumnLabel,,养成习惯,以保证用代码执行的效果和用sql直接操作数据库结果一致,方便排查
                    String dbColumnName = metaData.getColumnLabel(i).toUpperCase();
                    // -- 使用map保存,提高后续比对效率
                    dbColumnNameMap.put(dbColumnName, dbColumnName);
                }
                // --(1)开始比对字段完整性,动态更新表结构
                Map<String, String> columnMap = columnDDLMaps.get(tableName);
                for (String columnName : columnMap.keySet()) {
                    if (null == dbColumnNameMap.get(columnName)) {
                        // -- (2)如果数据库中该表不存在该字段,则新增该字段
                        String columnAddSql = columnMap.get(columnName);
                        jdbcTemplate.execute(columnAddSql);
                        log.info(" >>>>>>>>>> 表【" + tableName + "】，新增字段 【" + columnName + "】");
                    }
                }
                // --(2)添加索引
                // 备注：索引与字段有些不同，好像不能直接通过metaData获取到，如果通过查询的方式，每个数据库的查询索引语法又不同，比较麻烦，于是这里我们采取的策略是【直接重复创建】，创建索引语法是通用的，这样已有的会抛异常，没有的则自动添加
                Map<String, String> indexDDLMap = indexDDLMaps.get(tableName);
                if (indexDDLMap != null) {
                    for (Map.Entry<String, String> entry : indexDDLMap.entrySet()) {
                        String indexName = entry.getKey();
                        String indexDDL = entry.getValue();
                        try {
                            jdbcTemplate.execute(indexDDL);
                            log.info(" >>>>>>>>>> 检测到【" + tableName + "】表缺少名为【" + indexName + "] 的非主键索引，已完成新建");
                        } catch (Exception e) {
                            // 捕获到异常说明已经存在该索引，此处什么也不做
                        }
                    }
                }

                // 【优化机制1】表结构字段已完整,判断表中是否存在数据,如果表中数据为空,并且该表初始是有内置数据的,则重新插入内置数据(方便清空表后仍然能够重新插入内置数据,而无需删除表操作,毕竟删除表操作还是比较敏感的)
                Integer currentDataSize = jdbcTemplate.queryForObject("select count(1) from " + DB_ESCAPE_CHARACTER + tableName + DB_ESCAPE_CHARACTER, Integer.class);
                // -- 插入内置数据
                List<String> insertSqls = insertDataDMLMap.get(tableName);
                if (currentDataSize == 0 && null != insertSqls && insertSqls.size() > 0) {
                    int count = 0;
                    for (String insertSql : insertSqls) {
                        int rows = jdbcTemplate.update(insertSql);
                        count = count + rows;
                    }
                    log.info(" >>>>>>>>>> 检测到【" + tableName + "】表数据为0条，[" + count + "] 条内置数据已被重新插入");
                }
            } else {
                // 2.表不存在,则创建表,并插入内置数据
                String createTableSql = tableDDLMap.get(tableName);
                // -- 新建表
                jdbcTemplate.execute(createTableSql);
                // -- 新建索引
                Map<String, String> createIndexSqlMap = indexDDLMaps.get(tableName);
                int indexCount = 0;
                if (createIndexSqlMap != null) {
                    for (Map.Entry<String, String> entry : createIndexSqlMap.entrySet()) {
                        String indexDDL = entry.getValue();
                        jdbcTemplate.execute(indexDDL);
                        indexCount++;
                    }
                }
                // -- 插入内置数据
                List<String> insertSqls = insertDataDMLMap.get(tableName);
                int innerDataCount = 0;
                if (null != insertSqls && insertSqls.size() > 0) {

                    for (String insertSql : insertSqls) {
                        int rows = jdbcTemplate.update(insertSql);
                        innerDataCount = innerDataCount + rows;
                    }
                }
                // -- 生成日志语句
                StringBuilder logStr = new StringBuilder(" >>>>>>>>>> 新建【" + tableName + "】表;");
                if (indexCount > 0) {
                    logStr.append("【" + indexCount + "】个非主键索引被新建;");
                }
                if (innerDataCount > 0) {
                    logStr.append("【" + innerDataCount + "】条内置数据被插入;");
                }
                log.info(logStr.toString());
            }
        }
        // 结尾执行一些额外的扩展逻辑
        dbToolsConfig.executeExtraSqlInTheEnd();
        log.info("<====== 表结构校验结束 ======>\n\n");
    }


    /************************************************** 内部私有的方法 **************************************************/

    /**
     * sql分类：从对应文件中提取出【建表语句】【建索引语句】和【插入内置数据语句】进行归类
     * 归类后的sql语句将缓存至本对象的createTableSqlList，createIndexSqlList和insertDataSqlList属性中
     *
     * @throws IOException
     */
    private void classifySqls() throws IOException {
        // 1.先提取【建表语句】【插入内置数据语句】【注释语句(如果必要)】等
        Resource resource = new ClassPathResource("mysql/mysql_tenant.sql");
        List<String> sqls = ScriptUtils.readScript(resource);
        for (String sql : sqls) {
            if (tablePtn.matcher(sql).find()) {
                // 如果与建表语句匹配
                createTableSqlList.add(sql);
            } else if (insertDataPtn.matcher(sql).find()) {
                // 如果与插入语句匹配
                insertDataSqlList.add(sql);
            }
        }
        // 2.再提取【建索引语句】
        Resource indexResource = new ClassPathResource("commons/tenant_index.sql");
        createIndexSqlList = ScriptUtils.readScript(indexResource);
        log.info("<====== 原始sql分类完毕, 共计【" + createTableSqlList.size() + "】条建表语句，【" + createIndexSqlList.size() + "】条索引语句，【" + insertDataSqlList.size() + "】条插入语句) ======>\n\n");
    }

    /**
     * 初始化【索引定义】语句
     */
    private void initIndexDDL() {
        log.info("<====== 索引语句初始化开始 ======>");
        // 一、获取建索引sql集合
        List<String> createIndexSqlList = this.createIndexSqlList;
        // 二、遍历每句sql，解析封装到indexDDLMap中，以表名为键，创建索引sql为值
        // 【防御机制】创建一个map，用于检查索引名是否存在重复
        Map<String, String> indexNameRepeatCheckMap = new LinkedHashMap<>();
        for (String createIndexSql : createIndexSqlList) {
            // -- 1.将占位符替换为数据库对应的表名列名专属转义符号
            createIndexSql = createIndexSql.replaceAll("@", DB_ESCAPE_CHARACTER);
            createIndexSql = createIndexSql.replaceAll("#", DB_ESCAPE_CHARACTER);
            // -- 2.用索引正则提取出【表名】
            // 备注:如果【匹配正则语句】有3个小括号，那么其【捕获组】一共有3小段,比如`tableName`,三段分别是【`】【tableName】【`】,如果要获取表名,只需要第2段即可。
            // 索引正则【捕获组】同理，其正则语句中一共有7个括号，第2段为【索引名】，第4段为【表名】，第6段为【加索引的列名】。
            Matcher matcher = indexPtn.matcher(createIndexSql);
            if (matcher.find()) {
                // -- 表名列名索引名全部转大写
                String indexName = matcher.group(2).toUpperCase();
                String tableName = matcher.group(4).toUpperCase();
                if (indexNameRepeatCheckMap.get(indexName) == null) {
                    indexNameRepeatCheckMap.put(indexName, tableName);
                } else {
                    String existRepeatTableName = indexNameRepeatCheckMap.get(indexName);
                    String currentTableName = tableName;
                    throw new RuntimeException("检测到【" + existRepeatTableName + "】表和【" + currentTableName + "】表存在重复的索引名【" + indexName + "】！不符合规范！请修改！");
                }

                if (indexDDLMaps.get(tableName) == null) {
                    indexDDLMaps.put(tableName, new LinkedHashMap<>());
                }

                Map<String, String> indexDDLMap = indexDDLMaps.get(tableName);
                // -- 以索引名为键,创建索引的sql语句为值，封装到对应表的map中(去除前别忘了把sql结尾分号去除)
                indexDDLMap.put(indexName, createIndexSql.substring(0, createIndexSql.length() - 1));
            }
        }
    }

    /**
     * 初始化【表结构定义语句】
     * 解析建表sql文件,将建表语句以及添加字段语句封装至全局变量xxxDDLMaps中
     *
     * @throws IOException
     */
    private void initTableDDL() {
        log.info("<====== 建表语句初始化开始 ======>");
        // 一、获取建表sql集合
        List<String> createTableSqls = this.createTableSqlList;
        // 二、遍历每句sql,解析封装表与列的DDL语句
        for (String createTableSql : createTableSqls) {
            Matcher tableMatcher = tablePtn.matcher(createTableSql);
            if (tableMatcher.find()) {
                // 1.提取表名与建表语句,以表名为键,以建表语句为值,封装到tableDDLMap中
                // 备注:我们写的【建表匹配正则语句】有三个小括号，所以其【捕获组】一共有三小段,比如`tableName`,三段分别是【`】【tableName】【`】,如果要获取表名,只需要第2段即可
                String tableName = tableMatcher.group(2).toUpperCase();
                // -- 放入时去除语句结尾分号【;】，因为用jdbcTemplate执行sql不允许有分号存在（比如oracle）
                tableDDLMap.put(tableName, createTableSql.substring(0, createTableSql.length() - 1));
                // 2.提取列名与增列语句,以表名为键,指向一个子map,该子map,以列名为键,以新增列的语句为值
                // -- 去除表名前缀部分,顺带把换行符也一并去除了
                String columnStr = createTableSql.replaceAll(tableNameRegex + "|\\n", "");

                // -- 【默认值中的英文逗号,前置转化处理】，以解决后续用英文,分割时候产生的歧义问题
                String copySql = columnStr;
                Matcher dfMatcher = defaultValuePtn.matcher(copySql);
                // -- while循环会将默认值中的英文逗号,全部替换成临时占位符
                while (dfMatcher.find()) {
                    String rawSql = dfMatcher.group(2);
                    // 将默认值中的英文逗号先用占位符替换，防止split时候歧义，后续会再重新替换回来。（\\{替换成 \\\\{ 是因为{在java中属于转义字符，此处3步必须这么替换）
                    rawSql = rawSql.replaceAll("\\{", "\\\\{");
                    String handledSql = rawSql.replaceAll(",", commaInDefaultValue);
                    columnStr = columnStr.replaceAll(rawSql, handledSql);
                }

                // -- 从第一个【`】符号开始,截取语句, 然后以【逗号】作为分隔符分割(\\s*是为了一并除去逗号后面的多余空格),分割出字段语句
                String[] tempColumns = columnStr.substring(columnStr.indexOf(DB_ESCAPE_CHARACTER)).split(",\\s*");

                // -- 【默认值中的英文逗号,后置转化处理】，重新将之前约定的占位符号，转变回英文逗号
                ArrayList<String> columnSqls = new ArrayList<>();
                for (String cs : tempColumns) {
                    columnSqls.add(cs.replaceAll(commaInDefaultValue, ","));
                }
                Map<String, String> tableColsMap = new LinkedHashMap<>();
                // -- 遍历提取字段名,并动态生成【新增字段】的DDL语句,封装至【表列名map】中，以列名为键，列DDL sql为值
                for (String cs : columnSqls) {
                    if (cs.toUpperCase().contains("PRIMARY KEY")) {
                        // 遍历到PRIMARY KEY语句,说明遍历到结尾了
                        break;
                    }
                    Matcher columnMatcher = columnPtn.matcher(cs);
                    if (columnMatcher.find()) {
                        String columnName = columnMatcher.group(2).toUpperCase();
                        tableColsMap.put(columnName, "ALTER TABLE " + tableName + " ADD " + cs);
                    }
                }
                // -- 将【子map】封装到【父map】中
                columnDDLMaps.put(tableName, tableColsMap);
            }
        }
        log.info("<====== 建表语句初始化结束，共计载入【" + tableDDLMap.size() + "】条建表语句，对应【" + tableDDLMap.size() + "】张表 ======>\n\n");
    }

    /**
     * 初始化【内置数据插入语句】
     * 解析插入初始化数据的sql文件,将插入语句封装至全局变量initDataDMLMap中
     *
     * @throws IOException
     */
    private void initInterDataDML() {
        log.info("<====== 内置数据插入语句初始化开始 ======>");
        // 一、获取插入sql集合
        List<String> initDataSqls = this.insertDataSqlList;
        // 二、遍历每句sql,解析封装DML语句
        int dmlCount = 0;
        for (String insertSql : initDataSqls) {
            Matcher tableNameMatcher = insertDataPtn.matcher(insertSql);
            if (tableNameMatcher.find()) {
                // 1.提取表名与内置数据插入语句,以表名为键,以插入语句为值,封装到initDataDMLMap中
                // 备注:我们写的【匹配正则语句】有三个小括号，所以其【捕获组】一共有三小段,比如`tableName`,三段分别是【`】【tableName】【`】,如果要获取表名,只需要第2段即可
                String tableName = tableNameMatcher.group(2).toUpperCase();
                if (null == insertDataDMLMap.get(tableName)) {
                    insertDataDMLMap.put(tableName, new ArrayList<>());
                }
                List<String> insertDataSqlList = insertDataDMLMap.get(tableName);
                // 去除语句结尾分号【;】，因为用jdbcTemplate执行sql不允许有分号存在（比如oracle）
                insertDataSqlList.add(insertSql.substring(0, insertSql.length() - 1));
                dmlCount++;
            }
        }
        log.info("<====== 内置数据插入语句初始化结束，共计载入【" + dmlCount + "】条插入语句 ======>\n\n");
    }

    public DbToolsConfig getDbToolsConfig() {
        return dbToolsConfig;
    }

    public void setDbToolsConfig(DbToolsConfig dbToolsConfig) {
        this.dbToolsConfig = dbToolsConfig;
    }
}
