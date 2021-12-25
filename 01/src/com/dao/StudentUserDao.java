package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.po.Users;

import DatabaseFunction.DatabaseConnection;

public class StudentUserDao {
    
    public boolean usersLogin(Users u) throws SQLException 
    {	 
    	if (u.getUsername() == null || u.getPassword() == null) {
        return false;
    	}
    	
        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from user where name = ? and password = ?";
        pstmt = conn.prepareStatement(sql);
        //给 ? 赋值
        pstmt.setString(1,u.getUsername());
        pstmt.setString(2,u.getPassword());
        //执行查询（不需要传递sql）
        rs = pstmt.executeQuery();
        //判断
        if(rs.next()) {
        	return true;
        }
        

        return false;


    }
    
}
