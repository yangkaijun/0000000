package com.yc.biz;

import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import com.yc.bean.NewsType;

public interface NewsTypeBiz {
   /**
    * 条件查询新闻类别
    * 条件： 根据id查
    *       根据新闻类别模糊查
    *       根据状态查
    */
	
	public List<NewsType> findNewsType(NewsType newsType ) throws Exception;
	
	public int findNewsCount (NewsType  newsTYpe) throws FileNotFoundException,SQLException;

	public void add(NewsType newsType) throws Exception;
	
	
	
}
