package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import DatabaseFunction.DatabaseConnection;

public class CovidDao {
	public  boolean check(String name) throws SQLException {

        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from covid2 where provinceName = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,name);
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	return false;
        }
        return true;	
	}
    
    public void submit(String name,String d1,String d2,String d3,String d4,String d5 ) throws SQLException {

        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        int rs =0;
        String sql;
		  if(check(name)) {
			  sql = " INSERT INTO  covid2 VALUES( '"+name+"', '"+d1+"','"+d2+"','"+d3+"','"+d4+"','"+d5+"')";
			  pstmt = conn.prepareStatement(sql);

		  }else {
			  sql = "update covid2 set currentConfirmedCount="+d1+",confirmedCount="+d2+",suspectedCount="+d3+",curedCount="+d4+",deadCount="+d5+" where (provinceName =\""+name+"\")";
			  pstmt = conn.prepareStatement(sql);

			  
		  }
		  rs = pstmt.executeUpdate();



  }
}

