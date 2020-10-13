package com.eastrobot.aicc.dbtools.constants;

/**
 * 模块名称: 常量类
 * 模块描述: 设置一些通用的常量
 *
 * @author xinchi.wang
 * @date 2020/9/30 16:23
 */
public class DbToolsConstants {
    /**
     * 各个数据库建表sql中表名列名的转义标识符
     */
    public static final String DB_ESCAPE_CHARACTER_MYSQL = "`";
    public static final String DB_ESCAPE_CHARACTER_ORACLE = "\"";
    public static final String DB_ESCAPE_CHARACTER_SQLSERVER = "\"";

    /**
     * 各个数据库的别名
     */
    public static final String MYSQL = "mysql";
    public static final String ORACLE = "oracle";
    public static final String SQLSERVER = "sqlserver";
    public static final String DB2 = "db2";
}
