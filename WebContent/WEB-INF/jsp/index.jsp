<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../../header.jsp"%>

<script type="text/javascript">
      //当页面加载时就要请求所有类别的新闻的前30条
     // var pagesize;
      $(document).ready(function(){
    	 //发出请求  pages=1  pagesize=30
    	   $("#tname").val('');
    	  show(1,'');
      });
      
     function show(pages,tname){
    	 if(tname!=''){
    		tname=$("#tname").val();
    	 }
    	 
    	 $.ajax({
   		  type: "POST",
   		  url: "news.action",
   		  /* data: {
   			  pages:1,
   			  pagesize:30,
   			  op:"findNews"
   		  },
   		  如果用这种方式，必须在前面定义一个全局变量
   		  */
   		  data:"pages="+pages+"&pagesize=30&op=findNews&tname="+tname,
   		  dateType:"json",
   		  success: function(msg){ 
   			  //alert( "result: " +   msg );
   			  $("#newsList").html("");
   			  var str="";
   			  for(var i=0;i<msg.rows.length;i++){
   				  var news=msg.rows[i];
   				 str+="<li><a href='news.action?op=showDetail&nid="+news.nid+"'>"+ news.title   +"</a><span>"+news.ndate+"</span></li>";
   				  if((i+1)%5==0){
   					  str+="<li class='space'></li>";
   				  }
   				  
   			  }
   			  var total=parseInt(msg.total);
   			  var pagesize=parseInt(msg.pagesize);
   			  var totalPage=Math.ceil(total/pagesize);
   			  str+="【共"+msg.total+"条记录，每页"+msg.pagesize+"条   第"+msg.pages+"页/共"+totalPage+"页】";
   			  str+="<a href='javascript:void(0)' onclick='show(1)'>第一页</a>";
   			  if(totalPage>0){
   				if(msg.pages>1){
     				  str+="<a href='javascript:void(0)' onclick='show("+(msg.pages-1)+")'>上一页</a>"; 
     			  }else{
     				  str+="<a href='javascript:void(0)' onclick='show(1)'>上一页</a>";
     			  }
     			  
     			  
     			  if(msg.pages<totalPage){
     				  str+="<a href='javascript:void(0)' onclick='show("+(msg.pages+1)+")'>下一页</a>";
     			  }else{
     				  str+="<a href='javascript:void(0)' onclick='show("+totalPage+")'>下一页</a>";
     			  }
     			  
     			  str+="<a href='javascript:void(0)' onclick='show("+totalPage+")'>最后一页</a>";
   			  }
   			  
   			  
   			  $("#newsList").html(str);
   			} 
   		 }); 
     } 
     
     function showByType(obj,tname){
    	 $("#class_month > a").css("background-color","");
    	 $(obj).css("background-color","yellow");
    	 //将tname存到隐藏域中
    	 $("#tname").val(tname);
    	 show(1,tname);
     }
     
</script>


    <div id="container">
    	<div class="sidebar">
        	<div class="side_list">
          		<img src="images/title_1.gif" />
                <ul class="left_new">
                
                    <c:forEach items="${nativeNewsList }" var="n">
                             <li><a href="news.action?op=showDetail&nid=${n.nid }" title="${n.title}">${n.titleFormat }</a></li>
                    </c:forEach>
                	
                   
                </ul>
            </div>
            <div class="side_list">
          		<img src="images/title_2.gif" />
                 <ul class="left_new">
                	<c:forEach items="${foreignNewsList }" var="n">
                             <li><a href="news.action?op=showDetail&nid=${n.nid }" title="${n.title}">${n.titleFormat }</a></li>
                    </c:forEach>
                  
                </ul>
            </div>
            <div class="side_list">
          		<img src="images/title_3.gif" />
                 <ul class="left_new">
                	<c:forEach items="${yuLeNewsList }" var="n">
                             <li><a href="news.action?op=showDetail&nid=${n.nid }" title="${n.title}">${n.titleFormat }</a></li>
                    </c:forEach>
                    
                </ul>
            </div>
        </div>
        <div class="main">
        	<div class="class_type">
            	<img src="images/class_type.gif"/>
           	</div>
            <div class="content">
            	<div class="class_date" id="class_month">
            	
            	    <c:forEach items="${newsTypeList }" var="newsType">
            	           <a href="javascript:void(0)" onclick="showByType(this,'${newsType.tname }')">${newsType.tname }</a>
            	    </c:forEach>
                    
                   
               </div>
               <div class="classlist">
               		<ul id="newsList">
               		
               		
               		
               		    <c:forEach items="${allNewsList }" var="n" varStatus="vs">
            	           <li><a href="news.action?op=showDetail&nid=${n.nid }">${n.title }</a><span>${n.ndate }</span></li>
            	           
            	           <c:if test="${(vs.index+1)%5==0 }">
            	               <li class="space"></li>
            	           </c:if>           	           
            	        </c:forEach>
            	        
            	                                                     
                     <li class="space"><span>当前页数：[1/2] <a href="#">下一页</a> <a href="#">末页</a></span></li>                
                    </ul>
                  
                    <input type="hidden" name="tname" id="tname"/>
                  
               </div>
            </div>
            <div class="picnews">
            
            <c:forEach items="${picNewsList }" var="n">
                            <li><img src="${n.pic }"/><a href="news.action?op=showDetail&nid=${n.nid }" title="{n.title}">${n.titleFormat }</a></li>
             </c:forEach>
            	
               
            </div>
        </div>
    </div>
        
<%@ include file="../../footer.jsp"%>