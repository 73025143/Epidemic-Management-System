package com.dao;
import java.sql.*;

import DatabaseFunction.DatabaseConnection;
public class EmployeeDao {
    public static void read() throws Exception {
//        //����������
//    	Class.forName("com.mysql.cj.jdbc.Driver");
//        //���������ݿ�
//        String jdbc="jdbc:mysql://localhost:3306/test?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
//    Connection conn=DriverManager.getConnection(jdbc, "root", "122333");
    DatabaseConnection DB=DatabaseConnection.getInstance();
    Connection conn=DB.getConn();
    Statement stmt=conn.createStatement();//����
    String sql;
    sql = "SELECT id, name, address FROM employee";
    ResultSet rs = stmt.executeQuery(sql);

    // չ����������ݿ�
    while(rs.next()){
        // ͨ���ֶμ���
        int id  = rs.getInt("id");
        String name = rs.getString("name");
        String address = rs.getString("address");

        // �������
        System.out.print("ID: " + id);
        System.out.print(", ����: " + name);
        System.out.print(", �ص�: " + address);
        System.out.print("\n");
    }
    // ��ɺ�ر�
    rs.close();
    stmt.close();
    conn.close();
    }
    
    public static void delete(int num ) throws Exception {

  DatabaseConnection DB=DatabaseConnection.getInstance();
  Connection conn=DB.getConn();
  Statement stmt=conn.createStatement();//����
  String sql;
  sql = "delete from employee where id ="+num;
  int rs = stmt.executeUpdate(sql);

  if(rs==1) {
	  System.out.println("ɾ���ɹ�");
  }else {
	  System.out.println("ɾ��ʧ��");
  }

  // ��ɺ�ر�
  
  stmt.close();
  conn.close();
  }
  
    public static void insert(int ID,String name,String address ) throws Exception {

  DatabaseConnection DB=DatabaseConnection.getInstance();
  Connection conn=DB.getConn();
  Statement stmt=conn.createStatement();//����
  String sql;
  sql = "INSERT INTO `employee` VALUES ('"+ID+"', '"+name+"', '"+address+"')";

  int rs = stmt.executeUpdate(sql);

  if(rs==1) {
	  System.out.println("����ɹ�");
  }else {
	  System.out.println("����ʧ��");
  }
  stmt.close();
  conn.close();
  }
    
    public static void updateById(int ID,String name,String address ) throws Exception {

  DatabaseConnection DB=DatabaseConnection.getInstance();
  Connection conn=DB.getConn();
  Statement stmt=conn.createStatement();//����
  String sql;
  sql = "update employee SET name='"+name+"', address='"+address+"' where id="+ID;

  int rs = stmt.executeUpdate(sql);

  if(rs==1) {
	  System.out.println("���ĳɹ�");
  }else {
	  System.out.println("����ʧ��");
  }
  stmt.close();
  conn.close();
  }
    
    
    
}