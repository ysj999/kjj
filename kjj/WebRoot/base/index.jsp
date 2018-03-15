<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@page language="java" contentType="text/html; charset=utf-8" %>
<head>
<title>后台管理页面</title>
</head>
<frameset rows="50,*" frameborder="NO" border="0" framespacing="0">

	<frame src="base/top.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0">
    
  <frameset cols="243,*" id="frame">
	<frame src="base/left.jsp" name="leftFrame" noresize="noresize" marginwidth="2px" marginheight="0" frameborder="1" scrolling="no"  bordercolor="#008000" >
	<frame src="base/main.jsp" name="main" marginwidth="2px" marginheight="0" frameborder="1" bordercolor="#008000" scrolling="auto"  target="_self">
  </frameset>

 
</frameset>


</html>
