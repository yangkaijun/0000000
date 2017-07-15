<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>
<script type="text/javascript">
   $(function(){ 
	    $('#manTypeTable').edatagrid({
	    	url:'back/newsType.action?op=findAll'    ,//查看时加载url
	    	pagination: true ,//显示分页
	    	pageSize:50,     //默认分页的条数
	    	pageList:[5,10,15,20,25,30,35,40,45,50,100,200,500],//可选分页条数
	    	fitColumns:true ,//自适应列
	    	fit:true,//自动补全
	    	title:"新闻类别管理",
	    	idField:"tid",//标识，会记录我们选中的一行的id，不一定是id ,通常是主键
	    	rownumbers:"true",//显示行号
	    	sortName:"tid",//排列的列  这个参数会传到后台的servlet上，所以要有后台对应的接收
	    	sortOrder:"desc",//排列方式
	    	singleSelect:true,
	    		    	
	    	//以上的四种增删改查操作，只要失败都会调用者个onError
	    	onError: function(a,b){
	    		$.messager.alert("错误","操作失败");
	    	},
	    	columns:[[{
	    		
	    		field:'tid',
	    		title:'新闻编号',
	    		width: 100,
	    		align:'center',
	    		hidden:'true',
	    	},{
	    		field:'tname',
	    		title:'新闻名',
	    		width: 100,
	    		align:'center',

	    	},{
	    		field:'status',
	    		title:'显示状态',
	    		width: 100,
	    		align:'center',
	    	}]]
	    });
   });
</script>
<title>添加新闻类别</title>
</head>
<body>
  <table id="manTypeTable"></table>
</body>
</html>