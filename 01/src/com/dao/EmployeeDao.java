package com.dao;
import java.sql.*;

import DatabaseFunction.DatabaseConnection;
public class EmployeeDao {
    public static void read() throws Exception {
//        //导入驱动包
//    	Class.forName("com.mysql.cj.jdbc.Driver");
//        //链接至数据库
//        String jdbc="jdbc:mysql://localhost:3306/test?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
//    Connection conn=DriverManager.getConnection(jdbc, "root", "122333");
    DatabaseConnection DB=DatabaseConnection.getInstance();
    Connection conn=DB.getConn();
    Statement stmt=conn.createStatement();//容器
    String sql;
    sql = "SELECT id, name, address FROM employee";
    ResultSet rs = stmt.executeQuery(sql);

    // 展开结果集数据库
    while(rs.next()){
        // 通过字段检索
        int id  = rs.getInt("id");
        String name = rs.getString("name");
        String address = rs.getString("address");

        // 输出数据
        System.out.print("ID: " + id);
        System.out.print(", 名字: " + name);
        System.out.print(", 地点: " + address);
        System.out.print("\n");
    }
    // 完成后关闭
    rs.close();
    stmt.close();
    conn.close();
    }
    
    public static void delete(int num ) throws Exception {

  DatabaseConnection DB=DatabaseConnection.getInstance();
  Connection conn=DB.getConn();
  Statement stmt=conn.createStatement();//容器
  String sql;
  sql = "delete from employee where id ="+num;
  int rs = stmt.executeUpdate(sql);

  if(rs==1) {
	  System.out.println("删除成功");
  }else {
	  System.out.println("删除失败");
  }

  // 完成后关闭
  
  stmt.close();
  conn.close();
  }
  
    public static void insert(int ID,String name,String address ) throws Exception {

  DatabaseConnection DB=DatabaseConnection.getInstance();
  Connection conn=DB.getConn();
  Statement stmt=conn.createStatement();//容器
  String sql;
  sql = "INSERT INTO `employee` VALUES ('"+ID+"', '"+name+"', '"+address+"')";

  int rs = stmt.executeUpdate(sql);

  if(rs==1) {
	  System.out.println("插入成功");
  }else {
	  System.out.println("插入失败");
  }
  stmt.close();
  conn.close();
  }
    
    public static void updateById(int ID,String name,String address ) throws Exception {

  DatabaseConnection DB=DatabaseConnection.getInstance();
  Connection conn=DB.getConn();
  Statement stmt=conn.createStatement();//容器
  String sql;
  sql = "update employee SET name='"+name+"', address='"+address+"' where id="+ID;

  int rs = stmt.executeUpdate(sql);

  if(rs==1) {
	  System.out.println("更改成功");
  }else {
	  System.out.println("更改失败");
  }
  stmt.close();
  conn.close();
  }
    
    
    
}