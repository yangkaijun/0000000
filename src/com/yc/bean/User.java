package com.yc.bean;

import java.io.Serializable;

public class User implements Serializable{
	private int usid;
	private String uname;
	private String pwd;
	private String email;
	private int status;
	
	private String pwdagain;
	private String zccode;

	public String getZccode() {
		return zccode;
	}
	public void setZccode(String zccode) {
		this.zccode = zccode;
	}
	public String getPwdagain() {
		return pwdagain;
	}
	public void setPwdagain(String pwdagain) {
		this.pwdagain = pwdagain;
	}
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "User [usid=" + usid + ", uname=" + uname + ", pwd=" + pwd + ", email=" + email + ", status=" + status + "]";
	}
	
	
	
}
