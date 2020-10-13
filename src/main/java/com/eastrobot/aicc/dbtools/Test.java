package com.eastrobot.aicc.dbtools;

import java.sql.*;

/**
 * 模块名称: TODO
 * 模块描述: TODO
 *
 * @author xinchi.wang
 * @date 2020/10/13 10:16
 */
public class Test {
    public static void main(String[] args) throws SQLException {
        String name = "/%";
        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8", "root", "123456");
        PreparedStatement ps = conn.prepareStatement("select role_name from wangxinchi where role_name like ?");
        ps.setString(1,"%"+name+"%");
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()){
            String roleName = rs.getString("role_name");
            System.out.println(roleName);
            count++;
        }
        System.out.println("总个数:"+count);
        rs.close();
        ps.close();
        conn.close();
    }
}
