<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="head.jsp" %>
<title>新闻管理系统后台欢迎您</title>
<script type="text/javascript">
  $(function(){
	   var treeData=[{
		   "text":"类别管理",
		   "state":"closed",
		   "children":[{
			    "text":"新增类别",
			    "attributes":{
			    	//"url":"back/manager/newsType/addType.jsp"
			    	"url":"<iframe  style='height:100%;width:100%' src='back/manager/newsType/addType.jsp'/>"
			    }
			   
		   },{
			   "text":"类别维护",
			   "attributes":{
			    	//"url":"back/manager/newsType/manType.jsp"
			       "url":"<iframe  style='height:100%;width:100%' src='back/manager/newsType/manType.jsp'/>"
			    }
			   
		        }]
		   }];
	   
	    var treeDataNews=[{
		   "text":"新闻管理",
		   "state":"closed",
		   "children":[{
			    "text":"新闻添加",
			    "attributes":{
			    	//"url":"back/manager/newsType/addType.jsp"
			    	"url":"<iframe  style='height:100%;width:100%' src='back/manager/news/addNews.jsp'/>"
			    }
			   
		   },{
			   "text":"新闻维护",
			   "attributes":{
			    	//"url":"back/manager/newsType/manType.jsp"
			       "url":"<iframe  style='height:100%;width:100%' src='back/manager/news/manNews.jsp'/>"
			    }
		        
		   },{
			   "text":"删除新闻",
			   "attributes":{
			    	//"url":"back/manager/newsType/manType.jsp"
			       "url":"<iframe  style='height:100%;width:100%' src='back/manager/newsType/manType.jsp'/>"
			    }
			   
			   
		   }]
		   }];
	showTree("newsTypeTree",treeData);
	showTree("newsTree",treeDataNews);

    //显示树
    //参数1：要显示树的容器 ul 标签id号  ，data  树的节点内容  json格式
    function  showTree(treeId,data){
    	 $("#"+treeId).tree({
   		  data:data,
   		  onClick:function(node){
   			  //alert(node.text);
   			   if( node.attributes){
   				 //alert( node.attributes.url); 
   				 openTab(node);  
   			   }
   		  }
   	  });	 
 }
	
	/*  $("#newsTypeTree").tree({
		  data:treeData,
		  onClick:function(node){
			  //alert(node.text);
			   if( node.attributes){
				 //alert( node.attributes.url); 
				 openTab(node);  
			   }
		  }
	  });
	  $("#newsTree").tree({
		  data:treeDataNews,
		  onClick:function(node){
			  //alert(node.text);
			   if( node.attributes){
				 //alert( node.attributes.url); 
				 openTab(node);  
			   }
		  }
	  });
	  **/
  });
  function openTab(node){ //node 有text,url
	  if($("#mainTt").tabs("exists",node.text)){
		  $("#mainTt").tabs("select",node.text);
			    
	  }else{
		  
		  $("#mainTt").tabs("add",{ 
			 
			title:node.text,
			selected:true,
			closed:true,
			//tools:[{
			//iconCls:'icon-cancel',
			//handler:function(){alert('save')}
			//}],
			//href: node.attributes.url
			content: node.attributes.url
		  })
	  }  
  }
</script>
</head>

<body class="easyui-layout layout panel-noscroll">
	<div data-options="region:'north'" style="height: 50px">top</div>
	<div data-options="region:'south',split:true" style="height: 50px;">button</div>
	<div data-options="region:'east',split:true" title="East"
		style="width: 100px;">右边</div>
	<div data-options="region:'west',split:true" title="West"
		style="width: 150px;">
		<div class="easyui-accordion" style="width:500px;height:300px">
		
		<div title="新闻类别管理" style="overflow: auto; padding: 10px;">
				<div class ="easyui-panel" style="padding:5px">
				   <ul  id="newsTypeTree" class="easyui-tree" data-options="animate:true,state:closed,fit:true" >   
				  </ul>
			</div>
	  </div>
		
	 <div title="新闻管理" style="overflow: auto; padding: 10px;">
				<div class ="easyui-panel" style="padding:5px">
				   <ul  id="newsTree" class="easyui-tree" data-options="animate:true,state:closed,fit:true" >  
				  </ul>
			</div>		
     </div>
						
			<div title="数据字典" style="overflow: auto; padding: 10px;">数据字典</div>
			<div title="系统备份还原" style="overflow: auto; padding: 10px;">
				系统备份还原</div>
			<div title="权限管理" style="overflow: auto; padding: 10px;">权限管理</div>
		</div>

</div>		
	<div data-options="region:'center',title:'主操作区',iconCls:'icon-ok'">
	 <!-- tabls 区，有很多的tab-->
	   <div id="mainTt" class="easyui-tabs" data-options="fit:true,border:false">
     	 <div title="待处理业务区">欢迎您，源辰信息！</div>
	   <div>
     </div>
  </div>
</div>	
</body>
</html>