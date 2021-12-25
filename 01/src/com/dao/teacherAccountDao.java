package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.po.teacherAccount;

import DatabaseFunction.DatabaseConnection;

public class teacherAccountDao {
	public boolean teacherLogin(teacherAccount ta) throws SQLException 
    {	 
    	if (ta.getTeacherID()== null || ta.getPassword() == null) {
        return false;
    	}
    	
        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountTeacher where teacherID = ? and password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,ta.getTeacherID());
        pstmt.setString(2,ta.getPassword());
        
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	ta.setUsername(rs.getString("teacherName"));
        	ta.setTelephone(rs.getString("telephone"));
        	ta.setMajor(rs.getString("major"));
        	ta.setAge(rs.getString("age"));
        	return true;
        	
        }
        

        return false;
    }

}
