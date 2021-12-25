package com.po;

import java.text.SimpleDateFormat;
import java.util.Date;

public class UserDaily {
	private String username;
	private Date date;
	private SimpleDateFormat dateFormat=new SimpleDateFormat("YYYY-M-dd" );
	private boolean fever;
	private boolean headache;
	private double temperature;//temperature
	
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getDate() {
    	date = new Date();
    	dateFormat=new SimpleDateFormat("YYYY-M-dd" );
		
		String dataStr = dateFormat.format(date);
    	return dataStr;
    	
    }
    
    public void setFever(boolean fever) {
    	this.fever=fever;
    }
    
    public boolean getFever() {
    	return fever;
    }
    
    public void setHeadache(boolean headache) {
    	this.headache=headache;
    }
    
    public boolean getHeadache() {
    	return headache;
    }
    
    public void setTemperature(double temperature) {
    	this.temperature=temperature;
    } 
  
    public double getTemperature() {
    	return temperature;
    }

}
