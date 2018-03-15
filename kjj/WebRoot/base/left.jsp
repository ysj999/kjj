<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@page language="java" contentType="text/html; charset=utf-8" %>
<link href="../css/left.css" type="text/css" rel="stylesheet" />
<title>left</title>
<script src="../js/prototype.lite.js" type="text/javascript"></script>
<script src="../js/moo.fx.js" type="text/javascript"></script>
<script src="../js/moo.fx.pack.js" type="text/javascript"></script>

</head>

<body>
<table width="104%" height="280" border="0" cellpadding="0" cellspacing="0"  bgcolor="#FFFFFF">
  <tr>
    <td width="252" valign="top">
    <div id="container">
      <h1 class="type"><a href="javascript:void(0)">内容管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="../news?status=prein" target="main">添加内容</a></li>
          <li><a href="../news?status=premanage" target="main">管理内容</a></li>
          <li><a href="../news?status=project" target="main">管理项目</a></li>
          <li><a href="../news?status=masg" target="main">留言管理</a></li>
        </ul>
      </div>
      
      <h1 class="type"><a href="javascript:void(0)">成员管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="../person?status=premember" target="main">添加成员</a></li>
          <li><a href="../person?status=premembermanage" target="main">管理成员</a></li>
        </ul>
      </div>
      
      <h1 class="type"><a href="javascript:void(0)">文件管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
           
          </tr>
        </table>
        <ul class="MM">
		  <li><a  href="../document?status=predo" target="main">上传文件</a></li>
          <li><a  href="../document?status=premanagedo"target="main">文件管理</a></li>
          <li><a  href="../document?status=precode" target="main">代码管理</a></li>
          <li><a  href="../document?status=pres" target="main">成员架构</a></li>
        </ul>
      </div>
      
      <h1 class="type"><a href="javascript:void(0)">用户管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="../user?status=changePass" target="main">更改密码</a></li>
          <li><a href="../user?status=changeEmail" target="main">更改邮箱</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">其他管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          </tr>
        </table>
        <ul class="MM">
          <li><a  href="../web?status=preweb" target="main">添加链接</a></li>
          <li><a  href="../web?status=premanage" target="main">管理链接</a></li>
          <li><a  href="../web?status=pret" target="main">团队荣誉</a></li>
        </ul>
      </div>

        <h1 class="type"><a href="../index.jsp" target="_top">返回前台</a></h1>
      </div>
        <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
</body>
</html>
