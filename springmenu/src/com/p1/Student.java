package com.p1;

public class Student {
	int sid;
	String sname,loc;
	//Constructor 
	public Student(int sid, String sname, String loc) {
		//super();
		this.sid = sid;
		this.sname = sname;
		this.loc = loc;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	Student(){
		System.out.println("Student is initialized");
	}
}
