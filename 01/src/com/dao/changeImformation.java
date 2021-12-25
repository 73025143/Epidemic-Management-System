package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.po.studentAccount;

import DatabaseFunction.DatabaseConnection;

public class changeImformation {
	
	public boolean checktele(studentAccount sa) throws SQLException {

        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountStudent where (studentID!=? and telephone = ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sa.getStudentID());
        pstmt.setString(2,sa.getTelephone());
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	return false;
        }
        return true;	
	}
	
//	public boolean checktele() throws SQLException {
//		DatabaseConnection DB=DatabaseConnection.getInstance();
//        Connection conn=DB.getConn();
//        PreparedStatement pstmt = null;
//        ResultSet rs = null;
//        String sql = "select * from accountStudent where (studentID!=? and telephone = ?)";
//        rs = pstmt.executeQuery();
//        pstmt.setString(1,"1");
//        pstmt.setString(1,"1");
//        if(rs.next()) {
//        	return false;
//        }
//        return true;
//	}
	
	public  int submit(studentAccount sa) throws SQLException  {
		 
		if(checktele(sa)==false) {
			return -1;
		}
		
        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        int rs =0;
        String sql;

		sql="update accountstudent set studentName =?,grade=?,major=?, telephone=? where studentID =?";
		pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1,sa.getUsername());
	      pstmt.setString(2,sa.getGrade());
	      pstmt.setString(3,sa.getMajor());
	      pstmt.setString(4,sa.getTelephone());
	      pstmt.setString(5,sa.getStudentID());
		rs = pstmt.executeUpdate();
		if(rs==1) {
			  return 1;
		}
  

  return -200;

  }
}
