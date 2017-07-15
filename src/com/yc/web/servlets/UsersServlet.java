package com.yc.web.servlets;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yc.bean.JsonBean;
import com.yc.bean.User;
import com.yc.biz.UserBiz;
import com.yc.biz.impl.UserBizImpl;
import com.yc.utils.RequestUtil;

public class UsersServlet extends BaseServlet {
	private UserBiz userBiz=new UserBizImpl();


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	  if( "reg".equals(op)){
		   reg(req,resp);  
	  }else if("login".equals(op)){
		  login(req,resp);
		  
	  }else if("logout".equals(op)){
		  logout(req,resp);
	  }		
	  
	}
     private void logout(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    	 JsonBean jsonBean=new JsonBean();
    	 HttpSession session=req.getSession();
    	 session.removeAttribute("user");
    	 jsonBean.setCode(1);
    	 super.outJson(jsonBean,resp);  	 	
	}
     
	private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    	    JsonBean jsonBean=new JsonBean();
    	    
    	  try {
			
			  User user=RequestUtil.getParemeter(req, User.class);
			  user=userBiz.login(user);
			  jsonBean.setCode(1);
			  jsonBean.setObj(user);
			  HttpSession session=req.getSession();
			  session.setAttribute("user",user);
		  } catch (Exception e) {
			e.printStackTrace();
			 jsonBean.setCode(0);
			 jsonBean.setErrorMsg(  e.getMessage());
		}
       super.outJson(jsonBean,resp);
	}
     
	//注册
	private void reg(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		JsonBean jsonBean=new JsonBean();
		
		try {
			User user=	RequestUtil.getParemeter(req, User.class);
			//判断验证码
			//从session中取出标准的验证码
			 HttpSession session=req.getSession();
			 String rand=(String) session.getAttribute("rand");
			if( user.getZccode()!=null && user.getZccode().equals(rand)){
				 userBiz.reg(user);
				 jsonBean.setCode(1);
				 jsonBean.setObj("注册成功");
			}else{
				 jsonBean.setCode(0);
				 jsonBean.setErrorMsg("验证码不正确");
			}
		} catch (Exception e) {
			e.printStackTrace();
			jsonBean.setCode(0);
			jsonBean.setErrorMsg("服务器错误："+e.getMessage());
		} 
		super.outJson(jsonBean, resp);
	}

}
