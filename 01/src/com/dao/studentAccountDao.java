package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.po.studentAccount;
import DatabaseFunction.DatabaseConnection;
public class studentAccountDao {
	public boolean studentLogin(studentAccount sa) throws SQLException 
    {	 
    	if (sa.getStudentID() == null || sa.getPassword() == null) {
        return false;
    	}
    	
        DatabaseConnection DB=DatabaseConnection.getInstance();
        Connection conn=DB.getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from accountStudent where studentID = ? and password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sa.getStudentID());
        pstmt.setString(2,sa.getPassword());
        
        rs = pstmt.executeQuery();
        if(rs.next()) {
        	sa.setUsername(rs.getString("studentName"));
        	sa.setTelephone(rs.getString("telephone"));
        	sa.setMajor(rs.getString("major"));
        	sa.setGrade(rs.getString("grade"));
        	return true;
        	
        }
        

        return false;
    }
}

