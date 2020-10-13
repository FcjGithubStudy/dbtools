package com.eastrobot.aicc.dbtools.utils;

/**
 * 模块名称: 字符串工具类
 * 模块描述: 截取自org.apache.commons.lang3.StringUtils中的两个方法
 *
 * @author xinchi.wang
 * @date 2020/6/21 18:23
 */
public class StringUtils {

    public static boolean isBlank(CharSequence cs) {
        int strLen;
        if (cs != null && (strLen = cs.length()) != 0) {
            for(int i = 0; i < strLen; ++i) {
                if (!Character.isWhitespace(cs.charAt(i))) {
                    return false;
                }
            }

            return true;
        } else {
            return true;
        }
    }

    public static boolean isNotBlank(CharSequence cs) {
        return !isBlank(cs);
    }

}
