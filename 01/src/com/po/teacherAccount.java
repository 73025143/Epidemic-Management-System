package com.po;

public class teacherAccount {
	private String teacherID;
    private String username;
    private String password;
    private String Age;
    private String major;
    private String telephone;
    
    public teacherAccount()
    {
        
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }





	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}

	public String getAge() {
		return Age;
	}

	public void setAge(String age) {
		Age = age;
	}
}
