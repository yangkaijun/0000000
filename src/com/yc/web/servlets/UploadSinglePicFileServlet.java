package com.yc.web.servlets;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**

 * 处理单图片上传
 * 
 */
public class UploadSinglePicFileServlet extends HttpServlet {

	private String filepath;  //真实文件位置  tomcat在硬盘上的位置
	
	
	private String allowedFilesList="jpg,png,bmp,gif";
    private String deniedFilesList="bat,class,sh,exe,html,js,css";
    private long   maxFileSize=2000000;
    private long   totalMaxFileSize=4*maxFileSize;
    
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		if( config.getInitParameter("allowedFilesList")!=null){
			allowedFilesList=config.getInitParameter("allowedFilesList");	
		}
		if( config.getInitParameter("deniedFilesList")!=null){
			deniedFilesList=config.getInitParameter("deniedFilesList");	
		}
		if( config.getInitParameter("maxFileSize")!=null){
			maxFileSize=Long.parseLong(config.getInitParameter("maxFileSize"));	
		}
		if( config.getInitParameter("totalMaxFileSize")!=null){
			totalMaxFileSize=Long.parseLong(config.getInitParameter("totalMaxFileSize"));	
		}
		super.init(config);//调用父类的init方法读取基础配置
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//要回调客户端的javascript函数编号
		String callback=req.getParameter("CKEditorFuncNum");
		SmartUpload  su=new SmartUpload();
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter  out =null;
		
		try {
		     PageContext context=JspFactory.getDefaultFactory().getPageContext(this,req,resp,null,true,8*1024, true);
		     su.initialize(context);
		     su.setCharset("utf-8");
		
			 //定义允许上传文件类型
			 su.setAllowedFilesList(allowedFilesList);
			 //不允许上传文件类型
			 su.setDeniedFilesList(deniedFilesList);
			 //单个文件最大限制
			 su.setMaxFileSize(maxFileSize);
			 //所有上传文件总容量限制
			 su.setTotalMaxFileSize(totalMaxFileSize);
			 
			 su.upload();
			 //获取单个上传文件   java.io.File
		     com.jspsmart.upload.File file=su.getFiles().getFile(0);
			 //设置文件在服务器的保存位置
		     //取filepath所指的tomcat的硬盘路径
		     //="../news_uploadpics/"
		     //tomcat 中的news 项目的路径： c:\tomcat\apache-tomcat-7.0.47\webapps\news
		     String tomcatwebroot=this.getServletConfig().getServletContext().getRealPath("/");//news路径
		     File newsroot=new File(tomcatwebroot);//取news的父路径
		     //C:\tomcat-apache-tomcat-7.0.47\webapps
	
		     File tomcatRootFile=newsroot.getParentFile();
		     filepath=tomcatRootFile+"/news_uploadpics/"; //C:\tomcat-apache-tomcat-7.0.47\webapps/news_uploadpics/
		     String webUrl="../news_uploadpics/";//网页上访问图片的路径
		     
		     DateFormat  df=new SimpleDateFormat("yyyy/MM/");
		     String timeDir=df.format(new Date());
		     filepath+= timeDir;  //filepath  => C:\tomcat-apache-tomcat-7.0.47\webapps/news_uploadpics/2017/05
		 
			 webUrl+=timeDir;// wenUrl=>  ../news_uploadpics/2017/05/
			 //判断文件夹是否存在，不存在则创建
			 File  f=new File(filepath);
			  if(  f.exists()==false){
				   f.mkdirs();
				 
			 }
		    //拼接要保存的文件的新文件名
			String  fileName= genFileName(  file.getFileName() ); 
			filepath+=fileName;
			webUrl+=fileName;
	        //文件另存为
			file.saveAs(filepath,SmartUpload.SAVE_VIRTUAL );//以物理路径来保存
	     	// 将文件保存的位置传回给客户端
		    //返回‘图像’选项卡并显示图片
			out=resp.getWriter();
		    out.println("<script type=\"text/javascript\">");
		    out.println("window.parent.CKEDITOR.tools.callFunction(" +callback + ",'"+webUrl+"','上传文件成功');");//相对路径用于显示图片
		    out.println("</script>");
		 
	} catch (Throwable e) {
		e.printStackTrace();
		
		    out=resp.getWriter();
		    out.println("<script type=\"text/javascript\">");
		    out.println("window.parent.CKEDITOR.tools.callFunction("+ callback  + ",'','上传失败,"+e.getMessage()+"');");
		    out.println("</script>");
		
	}
	out.flush();
	out.close();
		
  }
	private String genFileName(String fileName) {
		String []  strs=fileName.split("\\.");
	    DateFormat df=new SimpleDateFormat("yyyyMMddHHmmss");
	    String prefix=df.format(new Date());
		return prefix+"."+strs[1];	
	}
	
}
