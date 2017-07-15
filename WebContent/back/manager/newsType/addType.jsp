<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>   
    
 <script type="text/javascript" >  
   $(function(){
   
	   $("#addBtn").click(function(){
	  //异步请求
	  $.ajax({
		 type:"POST" , 
		 url:"back/newsType.action",
		 data:$("#addNewsTypeForm").serialize(),
		 dataType:"json",
		 success: function(data){
			 if(data.code==1){
				 $.messager.alert('Warning','添加成功'); 
				 $("#tname").val('');
			 }else{
				
				 $.messager.alert('Warning','添加失败',+data.errorMsg);
			 } 
		 }
	  });
   });
 });
  
   function showNewsType(){
	  var url="back/newsType.action?op=findAll&status=1";
	   
   }  
 </script> 

<title>添加新闻类别</title>
</head>
<body>
 
    <form id="addNewsTypeForm" action="back/newsType.action" method="post">
    <div style="text-align:left">
         <input type="hidden" name="op" value="add" />
                       新闻类别名: <input type="text"  name="tname"  id="tname" />       
         <input type="button" id="addBtn" value="添加" />   
     </div>
    </form>                 
</body>
</html>