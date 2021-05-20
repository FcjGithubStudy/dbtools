package com.eastrobot.aicc.dbtools.utils;

import org.springframework.core.io.Resource;
import org.springframework.lang.Nullable;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.ArrayList;
import java.util.List;

/**
 * 模块名称: 脚本执行工具类
 * 模块描述: 执行sql脚本
 *
 * @author xinchi.wang
 * @date 2020/7/30 15:47
 */
public class ScriptUtils {
//    /**
//     * 测试
//     *
//     * @param args
//     * @throws IOException
//     */
//    public static void main(String[] args) throws IOException {
//        Resource resource = new ClassPathResource("oracle/oracle_master.sql");
//        List<String> sqls = ScriptUtils.readScript(resource);
//        String tempStr = "";
//        for (String sql : sqls) {
//            if (!tempStr.equals(sql.substring(0, 4))) {
//                System.out.println();
//                tempStr = sql.substring(0, 4);
//            }
//            System.out.println(sql);
//        }
//    }

    /**
     * 默认的语句结尾标记分隔符
     * 解释:因为部分内置sql的注释或者插入的数据中,也存在英文的分号;,如果没有针对结尾分号做特殊标记,后续分割就会出问题,故设置此变量。
     * 执行过程中会先把所有结尾分号先用【;!】符号临时代替，最后全局替换【;!】为【;】还原回来
     */
    public static final String DEFAULT_END_MARK_SEPARATOR = ";!";
    /**
     * 默认的单行注释前缀
     */
    public static final String[] DEFAULT_LINE_COMMENT_PREFIXES = new String[]{"--"};

    /**
     * 从sql脚本中读取出所有【有效语句】,并分句封装至集合中
     *
     * @param resource sql脚本文件
     * @return 封装语句后的list
     * @throws IOException
     */
    public static List<String> readScript(Resource resource) throws IOException {
        return readScript(resource, DEFAULT_LINE_COMMENT_PREFIXES);
    }

    /**
     * 从sql脚本中读取出所有【有效语句】,并分句封装至集合中
     *
     * @param resource            sql脚本文件资源
     * @param lineCommentPrefixes 单行注释前缀
     * @return 封装语句后的list
     * @throws IOException
     */
    private static List<String> readScript(Resource resource, @Nullable String[] lineCommentPrefixes) throws IOException {
        LineNumberReader lnr = null;
        StringBuilder scriptBuilder = new StringBuilder();
        try {
            // 1.创建一个行缓冲读取器(该类继承自BufferedReader,但是可以获取到行号)
            lnr = new LineNumberReader(new InputStreamReader(resource.getInputStream()));
            // 2.循环读取每一行，拼接成字符串
            String currentLineStatement;

            while ((currentLineStatement = lnr.readLine()) != null) {
                currentLineStatement = currentLineStatement.trim();
                // 【筛除机制1】：筛除【行级注释】开头的脚本语句
                if (startsWithAny(currentLineStatement, lineCommentPrefixes)) {
                    continue;
                }
                // 2行语句之间,可能出现缺少空格的情况,(比如insert into xxx和values();分布在两行),对于这种情况,我们需要补上空格(后面会全局替换多余空格,所以即便此处拼接多个空格也没有关系)
                if (scriptBuilder.length() > 0) {
                    scriptBuilder.append(" ");
                }
                // 去除前后空白后,如果是一句完整sql的结尾,则将结尾的【;】替换为指定标记符【;!】,以便于后续分割(此举解释:因为部分内置sql的注释或者插入的数据中,也存在英文的分号;,如果此处不做特殊标记,后续分割就会出问题)
                currentLineStatement = currentLineStatement.trim();
                if (currentLineStatement.endsWith(";")) {
                    String substring = currentLineStatement.substring(0, currentLineStatement.length() - 1);
                    currentLineStatement = substring + DEFAULT_END_MARK_SEPARATOR;
                }
                // -- 字符串拼接
                scriptBuilder.append(currentLineStatement);
            }
        } finally {
            try {
                if (lnr != null) {
                    lnr.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        // 【美化机制1】：全局替换多余空格：把2个以上的空格替换成1个
        String totalScript = scriptBuilder.toString().replaceAll("\\s{2,}", " ");
        // 3.将完整sql脚本，以指定的【特殊结尾标记符】为分割条件,分割成独立的一句句执行脚本，封装到集合中
        String[] statementStrs = totalScript.split(DEFAULT_END_MARK_SEPARATOR);
        List<String> statementList = new ArrayList<>();
        for (String statement : statementStrs) {
            if (StringUtils.isNotBlank(statement)) {
                // 去除空格前后缀,并把每句结尾分号重新补全回来
                statementList.add(statement.trim() + ";");
            }
        }
        return statementList;
    }

    /**
     * 判断是否存在指定前缀的方法
     *
     * @param script   目标字符串
     * @param prefixes 指定前缀数组
     * @return
     */
    private static boolean startsWithAny(String script, String[] prefixes) {
        for (String prefix : prefixes) {
            if (script.startsWith(prefix)) {
                return true;
            }
        }
        return false;
    }
}
