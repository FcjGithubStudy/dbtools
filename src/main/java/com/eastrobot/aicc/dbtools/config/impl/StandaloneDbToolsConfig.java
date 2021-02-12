package com.eastrobot.aicc.dbtools.config.impl;

import com.eastrobot.aicc.dbtools.config.DbToolsConfig;
import com.eastrobot.aicc.dbtools.constants.DbToolsConstants;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 模块名称: 独立的Dbtools数据源相关配置实现类
 * 模块描述: 主要用于私有环境部署,或者单租户环境执行该dbtools
 *
 * @author xinchi.wang
 * @date 2020/8/5 11:33
 */
public class StandaloneDbToolsConfig implements DbToolsConfig {
    private static final Log log = LogFactory.getLog(StandaloneDbToolsConfig.class);
    private JdbcTemplate jdbcTemplate;
    private DataSource dataSource;
    private PlatformTransactionManager transactionManager;

    @Override
    public JdbcTemplate getJdbcTemplate() {
        if (this.jdbcTemplate == null) {
            this.jdbcTemplate = new JdbcTemplate(createDataSource());
        }
        return this.jdbcTemplate;
    }

    @Override
    public DataSource createDataSource() {
        if (this.dataSource == null) {
            Properties props = new Properties();
            InputStream is = null;
            Resource resource = new ClassPathResource("jdbc.properties");
            try {
                is = resource.getInputStream();
                props.load(is);
            } catch (IOException e) {
                log.error("", e);
            } finally {
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e) {
                        log.error("", e);
                    }
                }
            }
            String url = props.getProperty("dbtools.datasource.url");
            String username = props.getProperty("dbtools.datasource.username");
            String password = props.getProperty("dbtools.datasource.password");
            String driverClass = props.getProperty("dbtools.datasource.driver-class-name");
            // 2.创建数据源连接池,以及jdbcTemplate
            synchronized (StandaloneDbToolsConfig.class) {
                if (dataSource == null) {
                    HikariConfig jdbcConfig = new HikariConfig();
                    jdbcConfig.setDriverClassName(driverClass);
                    jdbcConfig.setJdbcUrl(url);
                    jdbcConfig.setUsername(username);
                    jdbcConfig.setPassword(password);
                    dataSource = new HikariDataSource();
                    // 设置其他数据源配置属性(因为这个方法调用频率极低,所以连接数配置1根即可)
                    jdbcConfig.setMaximumPoolSize(1);//最大连接数(Integer)
                    jdbcConfig.setMinimumIdle(0);//最小空闲连接数(Integer)
                    HikariDataSource baseDataSource = new HikariDataSource(jdbcConfig);
                    this.dataSource = baseDataSource;
                }
            }
        }
        return this.dataSource;
    }

    @Override
    public void destroyDataSource(DataSource dataSource) {
        ((HikariDataSource) dataSource).close();
        log.info("<====== 正常结束:调用方法主动销毁相应的连接池 ======>\n\n");
    }

    /**
     * 单租户环境【结尾】额外脚本逻辑
     */
    @Override
    public void executeExtraSqlInTheEnd() {
        log.info("<====== 结尾额外扩展逻辑执行开始 ======>\n\n");
        JdbcTemplate jdbcTemplate = getJdbcTemplate();
        // 单租户环境,隐藏侧边栏【渠道】大菜单，因为【路由策略应用】和侧边栏大菜单【渠道】只能显示其中一个
        jdbcTemplate.update("UPDATE AUTH_MENU SET IS_SHOW = 0 WHERE ID = '40000'");
        log.info("<====== 结尾额外扩展逻辑执行结束 ======>\n\n");
    }

    public PlatformTransactionManager getTransactionManager() {
        if (this.transactionManager == null) {
            this.transactionManager = new DataSourceTransactionManager(createDataSource());
        }
        return this.transactionManager;
    }

    @Override
    public String getCurrentDbVendor() {
        String dbVendorName;
        Properties props = new Properties();
        Resource resource = new ClassPathResource("jdbc.properties");
        InputStream is = null;
        try {
            is = resource.getInputStream();
            props.load(is);
        } catch (IOException e) {
            log.error("", e);
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    log.error("", e);
                }
            }
        }
        String url = props.getProperty("dbtools.datasource.url");
        if (url.indexOf(DbToolsConstants.MYSQL) > -1) {
            dbVendorName = DbToolsConstants.MYSQL;
        } else if (url.indexOf(DbToolsConstants.ORACLE) > -1) {
            dbVendorName = DbToolsConstants.ORACLE;
        } else if (url.indexOf(DbToolsConstants.SQLSERVER) > -1) {
            dbVendorName = DbToolsConstants.SQLSERVER;
        } else if (url.indexOf(DbToolsConstants.DB2) > -1) {
            dbVendorName = DbToolsConstants.DB2;
        } else {
            // 默认值为mysql数据库
            dbVendorName = DbToolsConstants.MYSQL;
        }
        return dbVendorName;
    }
}
