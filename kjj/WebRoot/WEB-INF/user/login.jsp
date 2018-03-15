<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" pageEncoding="utf-8"%>
<head>

<title>登陆页面</title>
<link href="css/login.css" type="text/css" rel="stylesheet" />

</head>

<body>
   <div id="login">
      <form action="user?status=login" method="post">
      <p>
         <label>用户:</label>
         <input  class="text-input" type="text" name="uname"/>
      </p>
      
      <p>
         <label>密码:</label>
         <input  class="text-input" type="password" name="upassword"/>
      </p>
      
      <p>
         <label>请输入验证码：</label>
         <input  class="text" type="text" name="urand"/> <img  src="js/image.jsp" />
      </p> 
      <%String m=(String)request.getAttribute("meslogin");
      if(m!=null){
       %>
       ${requestScope.meslogin}
       <%
       }
       %>
      <p class="special">
         <input  class="button" type="submit" value="登录" />
         <a href="#">忘记密码...</a>
      </p>
      </form>


   </div>
</body>
</html>
