package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.po.teacherAccount;

import DatabaseFunction.DatabaseConnection;

public class accountRegistTeacher {
	public String teacherregist(teacherAccount sa) throws SQLException 
    { 
		if(sa.getTeacherID()==null) {
			return "Teacher ID can't be null";
		}
		if(sa.getUsername()==null) {
			return "Teacher Name can't be null";
		}
		if(sa.getTelephone()==null) {
			return "Telephone can't be null";
		}
		if(sa.getPassword()==null) {
			return "Password can't be null";
		}
		if(sa.getMajor()==null) {
			return "Major can't be null";
		}
		
		if(checkTeacherId(sa)==false) {
			return "the Student ID has been registered";
		}
		
		if(checktele(sa)==false) {
			return "the telephone number has been registered";
		}
		
		try {
		    DatabaseConnection DB=DatabaseConnection.getInstance();
		    Connection conn=DB.getConn();
		    PreparedStatement pstmt = null;
		    int rs =0;
		    String sql;
		    sql = " INSERT INTO accountTeacher (teacherID, teacherName,password,age,major, telephone) VALUES('"+sa.getTeacherID()+"','"+sa.getUsername()+"','"+sa.getPassword()+"','"+sa.getAge()+"','"+sa.getMajor()+"','"+sa.getTelephone()+"')";
		    pstmt = conn.prepareStatement(sql); 
			rs = pstmt.executeUpdate();
			if(rs==1) {
				return "registered successfully";
			}
		}catch (Exception e) {
			
		}
		return "fail to register";
		
		
		
    }
	
	public boolean checkTeacherId(teacherAccount sa) throws SQLException {
		DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountTeacher where teacherID = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sa.getTeacherID());
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	return false;
        }
        return true;
	}
	
	public boolean checktele(teacherAccount sa) throws SQLException {
		DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountTeacher where telephone = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sa.getTelephone());
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	return false;
        }
        return true;
	}

}
