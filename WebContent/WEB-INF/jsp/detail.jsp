<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>

<center>
	<p><b><center> ${news.title }  </center></b></p>
	作者:${news.auth }   创建时间:${news.ndate }  &nbsp;&nbsp;浏览数:${news.views }
	<hr width="70%" />
	<p> ${news.content }  </p>
	<p><img src="${news.pic }" /></p>
	  <a href="javascript:history.go(-1)">后退</a> 
</center>
   
<%@ include file="../../footer.jsp" %>