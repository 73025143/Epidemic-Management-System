package com.po;

import java.text.SimpleDateFormat;
import java.util.Date;

public class bbsMassage {
 private String name;
 private String studentID;
 private String content;
 private Date date;
 private SimpleDateFormat dateFormat=new SimpleDateFormat("YYYY-M-dd HH:mm:ss" );
 
 public bbsMassage() {
	 date = new Date();
	 String dataStr = dateFormat.format(date);
	 setDate(date);
	 
 }
 public bbsMassage(String name
,String studentID
,String content) {
	 this.name=name;
	 this.content=content;
	 this.studentID=studentID;
	 date = new Date();
	 setDate(date);
	 
 }
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getStudentID() {
	return studentID;
}
public void setStudentID(String studentID) {
	this.studentID = studentID;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getDate() {
	String dataStr = dateFormat.format(date);
	return dataStr;
}
public void setDate(Date date2) {
	this.date = date2;
}
 
}
