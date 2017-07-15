package com.yc.web.servlets;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.JsonBean;
import com.yc.bean.NewsType;
import com.yc.biz.NewsTypeBiz;
import com.yc.biz.impl.NewsTypeBizImpl;
import com.yc.utils.RequestUtil;

public class NewsTypeServlet extends BaseServlet {


	private static final long serialVersionUID = 7591535247130616341L;

	private NewsTypeBiz newsTypeBiz=new NewsTypeBizImpl();
	
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try  {
		     if("findAll".equals(op)){
			 findAll(req,resp);	
			 
		      }else if("add".equals(op)){
		    	  add(req,resp);  
		      }
		   }catch (Exception e) {
						
		      e.printStackTrace();
		 }
	}

private void add(HttpServletRequest req, HttpServletResponse resp) throws InstantiationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, IOException {
	  
	NewsType  newsType=RequestUtil.getParemeter(req, NewsType.class);
	JsonBean  jsonBean=new JsonBean();
	try {
		newsTypeBiz.add( newsType );
		jsonBean.setCode(1);
	} catch (Exception e) {
		e.printStackTrace();
		jsonBean.setCode(0);
		jsonBean.setErrorMsg(   e.getMessage() );
	}
	super.outJson(jsonBean, resp);
}

private void findAll(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	 //page=1&rows=50&sort=tid&order=desc
	  NewsType  newsType=RequestUtil.getParemeter(req,NewsType.class );
	 // newsType.setStatus(1);
	 List<NewsType> list=newsTypeBiz.findNewsType(newsType);
     int count=newsTypeBiz.findNewsCount(newsType);
//easyi要求的格式
     Map<String,Object> map=new HashMap<String,Object>();
     map.put("total", count);
     map.put("rows", list);
     
     super.outJson(map, resp);
     
   }	
}
