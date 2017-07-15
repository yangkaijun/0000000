package com.yc.web.listeners;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.yc.bean.NewsType;
import com.yc.biz.NewsTypeBiz;
import com.yc.biz.impl.NewsTypeBizImpl;
import com.yc.dao.LogUtil;

public class InitListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		

	}

	@Override//application 创建时，调用NewsTypeBizImpl操作，得到所有的有效类别application 中
	public void contextInitialized(ServletContextEvent event) {
		 NewsTypeBiz  ntb=new NewsTypeBizImpl();
		 NewsType newsType=new NewsType();
		 newsType.setStatus(1);
		 List<NewsType> list;
		try {
			list = ntb.findNewsType(newsType);
			ServletContext application=event.getServletContext();
			application.setAttribute("newsTypeList",list);
		} catch (Exception e) {
			
			e.printStackTrace();
			LogUtil.logger.error(e.getMessage());
			
		}
         
		
	}

}
