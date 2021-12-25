package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.po.UserDaily;

import DatabaseFunction.DatabaseConnection;

public class dailyDao {

  
	
	
	
	
	
	
	public boolean check(UserDaily d) throws SQLException {

        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from daily where name = ? and date = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,d.getUsername());
        pstmt.setString(2,d.getDate());
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	return false;
        }
        return true;	
	}
	
	
	
	public  boolean submit(UserDaily d ) throws Exception {

        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        int rs =0;
        String sql;
  if(check(d)) {
	  int fever = (d.getFever()) ? 1 : 0;
	  int headache=(d.getHeadache())? 1:0;
	  int Isolate=0;
	  if(d.getTemperature()>39) {Isolate=1;}
	  sql = " INSERT INTO daily ( name, date,fever,headache, temperature,Isolate) VALUES( '"+d.getUsername()+"', '"+d.getDate()+"','"+fever+"','"+headache+"','"+d.getTemperature()+"','"+Isolate+"')";
	  pstmt = conn.prepareStatement(sql); 
  }else {
	  sql="update daily set fever = ?,headache=?,temperature=? where (name = ? and date=?)";
	  pstmt = conn.prepareStatement(sql);
	  if(d.getFever()) {
		  pstmt.setString(1,"1");
	  }else {
		  pstmt.setString(1,"0");
	  }
	  if(d.getHeadache()){
		  pstmt.setString(2,"1");
	  }else {
		  pstmt.setString(2,"0");
	  }
	  String tem=""+d.getTemperature();
	  pstmt.setString(3,tem);
	  pstmt.setString(4,d.getUsername());
	  pstmt.setString(5,d.getDate());
  }
  rs = pstmt.executeUpdate();
  if(rs==1) {
  	return true;
  }
  

  return false;

  }
}


