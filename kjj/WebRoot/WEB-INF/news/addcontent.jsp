<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page language="java" contentType="text/html; charset=utf-8" %>
<title>添加内容</title>
<link  href="css/addcontent.css" type="text/css" rel="stylesheet"/>
</head>

<body>
<!-----------------top start----------->
<div class="bg1">
<img src="images/main-bg1.jpg"/>
</div>
<div class="bg2"><p><b>主页/<span>添加内容</span></b></p></div>
<div class="clearbox"></div>
<!----------------top end-------------------->

<!---------------------main start----------------->
<div id="container">
<form action="news?status=in" method="post">
    <div class="part">
        <label>标题:</label>
        <input  type="text" class="input" name="title"/>
    </div>
    
    <div class="part">
        <label>栏目:</label>
        <select class="select" name="l1">
          <option value="----一级栏目----"  selected="selected">----一级栏目----</option>
        <option value="走进荷尖角" >走进荷尖角</option>
		<option value="团队动态" >团队动态</option>
		<option value="项目展示" >项目展示</option>
		<option value="技术专区" >技术专区</option>
		<option value="加入我们" >加入我们</option>
        </select>
        <select class="select" name="l2">
		<option value="一级栏目"  selected="selected">---二级栏目---</option>
	    </select>
    </div>
    
    <div class="part">
        <label>作者:</label>
        <input  type="text" class="input" name="author"/>
    </div>
    
    
    <div class="part">
        <label>内容:<br /></label>
        <textarea rows="15" id="message" name="message"></textarea><br />
        <input  class="button" type="submit" value="提交" onclick="count()"/>
    </div>
<Script type="text/javascript">
    function count(){
       alert("添加成功");
    }
</Script>
</form>
</div>
<!----------------------main end--------------------->
</body>
</html>
