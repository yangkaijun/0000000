package com.yc.bean;

import java.io.Serializable;

public class JsonBean implements Serializable {
	
	
	private static final long serialVersionUID = 1093593975192798448L;
	private Integer code;
	private String errorMsg;
	private Object obj;
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getErrorMsg() {
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	
	
	
	

}
