package com.project.model;


public class StudentModel {


private String user_id;
private String user_name;
private String user_pass;
// from shubham 
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public String getUser_pass() {
	return user_pass;
}
public void setUser_pass(String user_pass) {
	this.user_pass = user_pass;
}
public StudentModel(String user_id, String user_name, String user_pass) {
	super();
	this.user_id = user_id;
	this.user_name = user_name;
	this.user_pass = user_pass;
}
public StudentModel() {
	super();
}
 
 
}
