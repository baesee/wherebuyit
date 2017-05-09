package com.lion.wherebuyit.domain;


/**
 * User VO
 * @author kim dong geon
 * 2017-05-03
 */
public class UserVO {
	
	private int u_id;
	private String user_id;
	private String user_pw;
	private String user_nm;
	private String last_login_date;
	private String user_role;
	private String user_img_path;
	private String name;
	private String id;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_nm() {
		return user_nm;
	}
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	public String getLast_login_date() {
		return last_login_date;
	}
	public void setLast_login_date(String last_login_date) {
		this.last_login_date = last_login_date;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public String getUser_img_path() {
		return user_img_path;
	}
	public void setUser_img_path(String user_img_path) {
		this.user_img_path = user_img_path;
	}
	
	
}
