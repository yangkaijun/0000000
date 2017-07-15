package com.yc.web.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.News;
import com.yc.biz.NewsBiz;
import com.yc.biz.impl.NewsBizImpl;

public class InitServlet extends BaseServlet {
	private NewsBiz newsBiz=new NewsBizImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//查出国内.国际。。。。图片，所有新闻的前xxx条,存到session 中
		
		try {
			News n1=new News("国内",1,11);
			List<News> nativeNewsList=newsBiz.findNews(n1);
			req.setAttribute("nativeNewsList", nativeNewsList);
			
			News n2=new News("国际",1,11);
			List<News> foreignNewsList=newsBiz.findNews(n2);
			req.setAttribute("foreignNewsList", foreignNewsList);
			
			News n3=new News("娱乐",1,11);
			List<News> yuLeNewsList=newsBiz.findNews(n3);
			req.setAttribute("yuLeNewsList", yuLeNewsList);
			
			News n4=new News();
			n4.setPic("");
			n4.setPages(1);
			n4.setPagesize(4);
			List<News> picNewsList=newsBiz.findNews(n4);
			req.setAttribute("picNewsList", picNewsList);
			
//			News n5=new News();
//			n5.setPages(1);
//			n5.setPagesize(30);
//			List<News> allNewsList=newsBiz.findNews(n5);
//			req.setAttribute("allNewsList", allNewsList);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		req.getRequestDispatcher("/"+ "WEB-INF/jsp/index.jsp").forward(req, resp);
		
	}

	
}
