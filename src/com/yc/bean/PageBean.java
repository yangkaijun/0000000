package com.yc.bean;

import java.io.Serializable;
import java.util.List;

/**
 * 分页bean
 * @author luoqiang
 *
 * @param <T>
 */
public class PageBean<T> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7313229623726375795L;
	
	private Integer total; // 总的记录数
	private Integer pages;  //*当前为第几页
	private Integer pagesize; //每页xx条
	private List<T> rows; //记录
	
	
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
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
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	
	public PageBean(Integer total, Integer pages, Integer pagesize, List<T> rows, Integer prepage, Integer nextpage,
			Integer totalpages) {
		super();
		this.total = total;
		this.pages = pages;
		this.pagesize = pagesize;
		this.rows = rows;
		 
	}
	public PageBean() {
		super();
	}  
}
