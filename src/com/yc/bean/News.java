package com.yc.bean;

import java.io.Serializable;

public class News implements Serializable {

	private static final long serialVersionUID = -3683153834240496187L;
	
	private Integer nid;
	private String  title;
	private String  ndate;
	private String  content;
	private String  auth;
	private String  pic;
	private Integer tid;
	private Integer views;
	private Integer weight;
	
	private String  tname;
	private Integer pages;
	private Integer pagesize;
	
	
	
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public Integer getPages() {
		return pages;
	}
	public void setPages(Integer pages) {
		this.pages = pages;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return title;
	}
	public String getTitleFormat() {
		String result="";
		if( title!=null && title.length()>10){
			result=title.substring(0, 8)+"...";
		}else{
			result=title;
		}
		return result;
	}
	
	
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNdate() {
		return ndate;
	}
	public void setNdate(String ndate) {
		this.ndate = ndate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public Integer getViews() {
		return views;
	}
	public void setViews(Integer views) {
		this.views = views;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	
	@Override
	public String toString() {
		return "News [nid=" + nid + ", title=" + title + ", ndate=" + ndate + ", content=" + content + ", auth=" + auth
				+ ", pic=" + pic + ", tid=" + tid + ", views=" + views + ", weight=" + weight + "]";
	}
	
	
	public News(String tname, Integer pages, Integer pagesize) {
		super();
		this.tname = tname;
		this.pages = pages;
		this.pagesize = pagesize;
	}
	public News(Integer nid, String title, String ndate, String content, String auth, String pic, Integer tid,
			Integer views, Integer weight) {
		super();
		this.nid = nid;
		this.title = title;
		this.ndate = ndate;
		this.content = content;
		this.auth = auth;
		this.pic = pic;
		this.tid = tid;
		this.views = views;
		this.weight = weight;
	}
	
	public News(){
		
		super();
	}
	
}
