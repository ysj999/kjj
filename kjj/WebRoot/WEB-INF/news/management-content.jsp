<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<%@ include file="/common/checklogin.jsp" %>
<html>
<head>
<title>管理内容</title>
<link  href="css/management-content.css" type="text/css" rel="stylesheet"/>

</head>

<body>
<!-----------------top start----------->
<div class="bg1">
<img src="images/main-bg1.jpg"/>
</div>
<div class="bg2"><p><b>主页/<span>内容管理</span></b></p></div>
<div class="clearbox"></div>
<!----------------top end-------------------->


<!----------------------main start----------------->



<div id="container">
    <div class="part1">
        <label>选择:</label>
        <select class="select">
        <option value="第七届"  selected="selected">第七届</option>
        <option value="第一届" >第一届</option>
		<option value="第二届" >第二届</option>
		<option value="第三届" >第三届</option>
		<option value="第四届" >第四届</option>
		<option value="第五届" >第五届</option>
        <option value="第六届" >第六届</option>
        </select>
    </div>
    
    <div id="checked">
    <label>内容列表</label>
    <div class="clearbox"></div>

    <table id="grid" >
        <tr class="title">
            <th>ID</th><th>标题</th><th>作者</th><th>栏目一</th><th>栏目二</th><th>简略</th><th colspan="3">操作</th>
        </tr>
 <c:forEach items="${list}" var="n">
        <tr>
            <td><input name="checkbox" type="checkbox" value="${n.id}" id="checkbox1" /></td>
            <td>${n.title}</td>
            <td>${n.author}</td>
            <td>${n.l1}</td>
            <td>${n.l2}</td>
            <td>${n.message}</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="news?status=delete&id=${n.id}" onclick="if(!confirm('确定要删除吗？')) return false;">删除</a></td>
        </tr>
</c:forEach>  
   </table>
<!---表格变色start--->
<script type="text/javascript" src="js/colorchangetabs.js"></script>
<script type="text/javascript">
//grid("名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
grid("grid","#fff","#fff","#F5E8CD","#fff");
</script>
<!---表格变色end--->

    </div>
      <div class="clearbox"></div>
<!------------------------控制全选反选js start ----------------------------->
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/jquery.checkbox.js"></script>
<script type="text/javascript" src="js/jquery.checkbox2.js"></script>
<!------------------------控制全选反选js end-------------------------------->

      <div>
      <input class="button" type="submit"  name="" id="allchoose" value="全选" />
      <input class="button" type="submit"  name="" id="delete" value="删除" />
      <input class="button" type="submit"  name="" id="reverse" value="反选" />
      </div>
      <div class="clearbox"></div>
      <div class="clearbox"></div>
      <div class="part2">
      <a href="#">&lt;&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a>...<a href="#">100</a><a href="#">101</a><a href="#">&gt;&gt;</a>
      </div>
      

</div>

<!------------------------main end---------------------->

</body>
</html>
