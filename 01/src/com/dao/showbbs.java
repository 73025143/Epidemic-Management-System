package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;

import DatabaseFunction.DatabaseConnection;
public class showbbs {
	public StringBuffer sb = new StringBuffer();
	public String[]show() {
		try{
        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs;
        String sql = "SELECT name, studentID,content,date FROM bbs";
        pstmt = conn.prepareStatement(sql); 
        rs = pstmt.executeQuery(sql);
        //STEP 5: Extract data from result set
        while(rs.next()){
           //Retrieve by column name
        	
           String name  = rs.getString("name");
           String studentID = rs.getString("studentID");
           String content = rs.getString("content");
           String date = rs.getString("date");
           
           sb.append(name);
           sb.append("@");
           sb.append(studentID);
           sb.append("@");
           sb.append(content);
           sb.append("@");
           sb.append(date);
           sb.append("%");
           //Display values

        }
        rs.close();
        String str = sb.toString();
        String[] params2 = str.split("%");
        String[] params=new String[params2.length];
        String result[][]=new String[params2.length][4];
        for(int i=0;i<params2.length;i++) {
        	params[i]=params2[params2.length-i-1];

        }

        return params;
		}catch (SQLException se) {
			se.printStackTrace();
		}
//		String[][] error={{"error"}};
		String[] error={"error"};
		return error;

	}
}
