package com.yc.biz.impl;

import com.yc.bean.News;
import com.yc.bean.PageBean;
import com.yc.biz.NewsBiz;
import com.yc.dao.DBHelper;

import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsBizImpl implements NewsBiz {
	private DBHelper db=new DBHelper();
	
	public List<News> findNews(News news) throws Exception{
		String sql="select nid,title,ndate,content,auth,pic,news.tid,views,weight from news inner join newstype on newstype.tid=news.tid where 1=1 ";
		List<Object> params=new ArrayList<Object>();
		if( news!=null){
			 if(news.getNid()!=null&& news.getNid()>0){
				 sql+=" and nid=?";
				 params.add( news.getNid());
			 }
			 if( news.getTname()!=null&&!"".equals(news.getTname())){
				 sql+=" and tname =?";
				 params.add(news.getTname());
				 
			 }
			if(news.getPic()!=null && "".equals(news.getPic())){
				sql+=" and pic is not null ";	
			}
			sql+=" order by weight desc,ndate desc";
			if( news.getPages()!=null && news.getPagesize()!=null){
				
				int pages=news.getPages();
				int pagesize=news.getPagesize();
				int start=(pages-1)*pagesize;
				sql+=" limit ?,?";
				params.add( start);
				params.add( pagesize);
			}
		}
	
		return db.findObject(sql, params, News.class);
	}
  @Override
   public Integer findNewsCount(News news) throws Exception {
	String sql="select count(*) from news inner join newsType on newsType.tid=news.tid where 1=1 " ;
	List<Object> params=new ArrayList<Object>();
	if(news!=null){
		if(news.getNid()!=null&& news.getNid()>0){
			 sql+=" and nid=?";
			 params.add( news.getNid());
		 }
		if(news.getTname()!=null&&!"".equals(news.getTname())){
			sql+=" and tname=?";
			params.add( news.getTname());
		}
		if( news.getPic()!=null && "".equals(news.getPic())){
			
			 sql+=" and pic is not null";
		}
	}
	int count=(int)db.getCount(sql, params);
	return count;
  }

 @Override
 public PageBean<News> findNewsByPage(News news) throws Exception {
	int total=findNewsCount(news);
	 List<News> allNewsList=findNews(news);
	 PageBean<News> pageBean=new PageBean<News>();
	 
	 pageBean.setPages(news.getPages());
	 pageBean.setPagesize(news.getPagesize());
	 pageBean.setRows(allNewsList);
	 pageBean.setTotal(total);
	return  pageBean;
   }
@Override
public void addNews(News news) throws SQLException {
	String sql="insert into news(title,ndate,content,auth,pic,tid,views,weight) "
			+ "values( ?,sysdate(),?,?,?,?,0,1,?);";
	List<Object> params=new ArrayList<Object>();
	params.add(news.getTitle());
	params.add(news.getContent());
	params.add(news.getAuth());
	params.add(news.getPic());
	params.add(news.getTid());
	params.add(news.getWeight());
	db.doUpdate(sql, params);
}
}
