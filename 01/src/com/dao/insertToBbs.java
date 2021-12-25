package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.po.bbsMassage;

import DatabaseFunction.DatabaseConnection;

public class insertToBbs {
	
	public  boolean submit(bbsMassage b ) throws Exception {

        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        int rs =0;
        String sql;
	  sql = " INSERT INTO bbs VALUES( '"+b.getName()+"','"+b.getStudentID()+"','"+b.getContent()+"','"+b.getDate()+"')";
	  pstmt = conn.prepareStatement(sql); 
  
	  rs = pstmt.executeUpdate();
	  if(rs==1) {
	  	return true;
	  }
	  
	
	  return false;
	
	  }
}
