<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@page language="java" contentType="text/html; charset=utf-8"%>
<title>用户管理</title>
<link href="css/change-pass word.css"type="text/css" rel="stylesheet" />
<!--table切换卡-->
<script src="js/jquery.js"></script>
<script src="js/jquery.tabs.js"></script>
<script src="js/jquery.lazyload.js"></script>
<script type="text/javascript">
$(function(){

	$("img[original]").lazyload({ placeholder:"images/color3.gif" });
	
	$('.demo1').Tabs();
	$('.demo2').Tabs({
		event:'click'
	});
	$('.demo3').Tabs({
		timeout:300
	});
	$('.demo4').Tabs({
		auto:3000
	});
	$('.demo5').Tabs({
		event:'click',
		callback:lazyloadForPart
	});
	//部分区域图片延迟加载
	function lazyloadForPart(container) {
		container.find('img').each(function () {
			var original = $(this).attr("original");
			if (original) {
				$(this).attr('src', original).removeAttr('original');
			}
		});
	}
});	
</script>
</head>

<body>
<!-----------------top start----------->
<div class="bg1">
<img src="images/main-bg1.jpg"/>
</div>
<div class="bg2"><p><b>主页/<span>用户管理</span></b></p></div>
<div class="clearbox"></div>
<!----------------top end-------------------->

<!----------main start----------------------------->
<div id="container">  
  		<div class="box demo2">
			<ul class="tab_menu">
				<li class="current">更改密码</li>
				<li>更改邮箱</li>
				
			</ul>
			<div class="tab_box">
				<div>
					<ul>
            <form action="user?status=pass" method="post">
           <label>当前密码：</label><br /><input type="text" class="input" name="cpassword"/> <br />
           <label>新密码:</label><br /><input type="text" class="input" name="npassword"/><br />
           <label> 重复新密码</label><br /><input type="text" class="input" name="rpassword"/><br />
           <input class="button" type="submit"  name=""  value="更改密码" />
            </form>
<% 
String mes=(String)request.getAttribute("mp");
String mes1=(String)request.getAttribute("misp");
    if(mes!=null){
 %>
<script type="text/javascript">
 alert("<%=mes%>");
</script>
<%}
   if(mes1 !=null){
 %>
    ${requestScope.misp}
  <%} %> 

					</ul>
				</div>
				<div class="hide">
					<ul>
            <form>
           <label>当前邮箱地址：</label><br /><input type="text" class="input" /> <br />
           <label>登录密码:</label><br /><input type="text" class="input" /><br />
           <label> 新邮箱地址</label><br /><input type="text" class="input" /><br />
           <input class="button" type="submit"  name=""  value="更改邮箱" />
            </form>
					</ul>
				</div>
				
                
              </div>
            </div>
</div>
<!----------main end----------------------------->

</body>
</html>
