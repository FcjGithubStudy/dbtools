package com.eastrobot.aicc.dbtools;

import com.eastrobot.aicc.dbtools.config.DbToolsConfig;
import com.eastrobot.aicc.dbtools.config.impl.StandaloneDbToolsConfig;
import com.eastrobot.aicc.dbtools.constants.DbToolsConstants;
import com.eastrobot.aicc.dbtools.validator.MysqlValidator;
import com.eastrobot.aicc.dbtools.validator.OracleValidator;
import com.eastrobot.aicc.dbtools.validator.SqlServerValidator;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.IOException;

/**
 * 模块名称: 单数据源程序入口
 * 模块描述: 启动程序
 *
 * @author xinchi.wang
 * @date 2020/9/30 17:35
 */
public class App {
    private static final Log log = LogFactory.getLog(App.class);

    public static void main(String[] args) {
        // 1.加载单租户配置,根据数据库厂商,创建对应的校验器,进行表结构校验
        DbToolsConfig dbToolsConfig = new StandaloneDbToolsConfig();
        String dbVendor = dbToolsConfig.getCurrentDbVendor();
        try {
            if (DbToolsConstants.MYSQL.equals(dbVendor)) {
                MysqlValidator mysqlValidator = new MysqlValidator(new StandaloneDbToolsConfig());
                mysqlValidator.init();
                mysqlValidator.validateTables();
            } else if (DbToolsConstants.ORACLE.equals(dbVendor)) {
                OracleValidator oracleValidator = new OracleValidator(new StandaloneDbToolsConfig());
                oracleValidator.init();
                oracleValidator.validateTables();
            } else if (DbToolsConstants.SQLSERVER.equals(dbVendor)) {
                SqlServerValidator sqlServerValidator = new SqlServerValidator(new StandaloneDbToolsConfig());
                sqlServerValidator.init();
                sqlServerValidator.validateTables();
            }
        } catch (IOException e) {
            log.error("", e);
        } finally {
            // 方法结束主动销毁数据源连接池
            dbToolsConfig.destroyDataSource(dbToolsConfig.getDataSource());
        }
    }
}
