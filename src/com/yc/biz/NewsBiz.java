package com.yc.biz;

import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;
import com.yc.bean.News;
import com.yc.bean.PageBean;

public  interface  NewsBiz {
	public  void addNews(News news) throws  FileNotFoundException, SQLException ;
	/**
	 * 根据条件查询新闻
	 * @param news
	 * @return
	 * @throws Exception
	 */
	public List<News> findNews(News news) throws Exception ;
	
	/**
	 * 查询某个条件下有多少条新闻
	 * @param news
	 * @return
	 * @throws Exception
	 */
	public Integer findNewsCount(News news)throws Exception ;
	
	/**
	 * 分页数据的查询：就是以上两个查询的整合
	 * 要得条件：  News 
	 * 结果：javabean   pageBean 
	 * total:总记录数
	 * totalpages:总页数
	 * pages:当前为第几页
	 * pagesize:每页XX条
	 * prepages:上一页是几
	 * nextpage:下一页是几
	 * rows:array[{},{},{},{}]
	 * 
	 * 
	 * @param news
	 * @return
	 * @throws Exception
	 */
	public PageBean <News> findNewsByPage(  News news)throws Exception ;
	
}
