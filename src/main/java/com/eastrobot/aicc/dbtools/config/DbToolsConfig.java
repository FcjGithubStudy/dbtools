package com.eastrobot.aicc.dbtools.config;

import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

/**
 * 模块名称: dbtools相关配置接口类
 * 模块描述: 主要用于配置jdbcTemplate的来源等
 *
 * @author xinchi.wang
 * @date 2020/9/30 10:20
 */
public interface DbToolsConfig {
    /**
     * 获取jdbcTemplate
     *
     * @return
     */
    JdbcTemplate getJdbcTemplate();

    /**
     * 创建DataSource的方法(需要开发者自己实现)
     *
     * @return
     */
    default DataSource createDataSource() {
        return null;
    }

    /**
     * 获取数据源连接池的方法
     */
    default DataSource getDataSource() {
        return getJdbcTemplate().getDataSource();
    }

    /**
     * 销毁DataSource的方法(需要开发者自己实现)
     * 解释:jdbcTemplate的创建,需要一个dataSource,【多租户场景】,每个租户都要生成其对应的dataSource,那么内存中dataSource可能会很多,
     * 所以如果不放心,怕内存溢出,可以实现这个方法，并根据实际情况再合适的地方调用dbToolsConfig.destroyDataSource()来强制销毁数据库连接池
     * 参考:我使用的是HikariDataSource,其有个close方法,可以手动销毁dataSource实例.
     *
     * @param dataSource 需要销毁的数据源
     */
    default void destroyDataSource(DataSource dataSource) {
    }

    /**
     * 校验逻辑结尾额外的扩展脚本逻辑(需要开发者自己实现)
     * 解释:在表校验全部执行完毕后，有时候需要执行一些额外的脚本做处理。比如【多租户环境】和【单租户环境】，auth_menu表的内置数据略有不同,
     * 这时候为了避免再另外维护一套sql，我们可以在此方法内对应的脚本内单独加一些update语句，此方法会在最后被调用，去执行一些额外的脚本逻辑
     */
    default void executeExtraSqlInTheEnd() {
    }

    /**
     * 获取当前数据库厂商标签的方法(需要开发者自己实现)
     *
     * @return 字符串：mysql，oracle，sqlserver，db2等
     */
    default String getCurrentDbVendor() {
        return null;
    }
}
