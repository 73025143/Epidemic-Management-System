package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.po.studentAccount;

import DatabaseFunction.DatabaseConnection;

public class accountRegistStudent {
	public String studentregist(studentAccount sa) throws SQLException 
    { 
		if(sa.getStudentID()==null) {
			return "Student ID can't be null";
		}
		if(sa.getUsername()==null) {
			return "Student Name can't be null";
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
		if(("1".equals(sa.getGrade())|"2".equals(sa.getGrade())|"3".equals(sa.getGrade())|"4".equals(sa.getGrade()))==false) {
			
			return "Only grades 1 to 4 are allowed,what you wrote is "+sa.getGrade();
		}
		
		if(checkStudentId(sa)==false) {
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
		    sql = " INSERT INTO accountStudent (studentID, studentName,password,grade,major, telephone) VALUES('"+sa.getStudentID()+"','"+sa.getUsername()+"','"+sa.getPassword()+"','"+sa.getGrade()+"','"+sa.getMajor()+"','"+sa.getTelephone()+"')";
		    pstmt = conn.prepareStatement(sql); 
			rs = pstmt.executeUpdate();
			if(rs==1) {
				return "registered successfully";
			}
		}catch (Exception e) {
			
		}
		return "fail to register";
		
		
		
    }
	
	public boolean checkStudentId(studentAccount sa) throws SQLException {
		DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountStudent where studentID = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sa.getStudentID());
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	return false;
        }
        return true;
	}
	
	public boolean checktele(studentAccount sa) throws SQLException {
		DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountStudent where telephone = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sa.getTelephone());
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	return false;
        }
        return true;
	}

}
