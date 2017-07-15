package com.yc.web.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public abstract class BaseServlet extends HttpServlet {
	
	private static final long serialVersionUID = -4082987161620454124L;
	protected String op;

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
		op=req.getParameter("op");
		super.service(req, resp);
	}
	
	@Override  //doGet方法处理GET请求方式
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	public void outJson(Object obj, HttpServletResponse resp) throws IOException{
		Gson gson=new Gson();
		String jsonstr=gson.toJson(obj);
		
		outJsonStr( jsonstr,resp);
		
	}

	public void outJsonStr(String jsonStr, HttpServletResponse resp) throws IOException {
		resp.setContentType("application/json;charset=utf-8");
		PrintWriter out =resp.getWriter();
		out.println(jsonStr);
		out.flush();
		out.close();
			
	}
	
}
