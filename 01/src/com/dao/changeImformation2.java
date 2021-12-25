package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.po.teacherAccount;

import DatabaseFunction.DatabaseConnection;

public class changeImformation2 {
	public boolean checktele(teacherAccount sa) throws SQLException {

        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountTeacher where (teacherID!=? and telephone = ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sa.getTeacherID());
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
	
	public  int submit(teacherAccount sa) throws SQLException  {
		 
		if(checktele(sa)==false) {
			return -1;
		}
		
        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        int rs =0;
        String sql;

		sql="update accountteacher set teacherName =?,age=?,telephone=? where teacherID =?";
		pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1,sa.getUsername());
	      pstmt.setString(2,sa.getAge());
	      pstmt.setString(3,sa.getTelephone());
	      pstmt.setString(4,sa.getTeacherID());
		rs = pstmt.executeUpdate();
		if(rs==1) {
			  return 1;
		}
  

  return -200;

  }
}
