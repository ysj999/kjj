<%@ page language="java" pageEncoding="utf-8"%>
<%
	
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>黄石市黄石港区科技网</title>
<script src="js/jquery.1.7.2.min.js"></script>
<script src="js/jquery.img_silder.js"></script>
    <script>
        $(function(){
            $('#silder').imgSilder({
				s_width:'400px', //容器宽度
				s_height:280, //容器高度
				is_showTit:true, // 是否显示图片标题 false :不显示，true :显示
				s_times:3000, //设置滚动时间
				css_link:'css/style.css'
			});
		});
    </script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

<!-- 图片滚动 -->

<script type="text/javascript">

var dir=1;//每步移动像素，大＝快
var speed=20;//循环周期（毫秒）大＝慢
var MyMar=null;

function Marquee(){//正常移动
	var scrollbox = document.getElementById("scrollbox");
	var scrollcopy = document.getElementById("scrollcopy");
	if(dir>0&&(scrollcopy.offsetWidth-scrollbox.scrollLeft)<=0){
		scrollbox.scrollLeft=0;
	}
	if(dir<0 &&(scrollbox.scrollLeft<=0)){
		scrollbox.scrollLeft=scrollcopy.offsetWidth;
	}
		scrollbox.scrollLeft+=dir;
}

function onmouseoverMy(){
	window.clearInterval(MyMar);
}//暂停移动

function onmouseoutMy() {
	MyMar=setInterval(Marquee,speed);
}//继续移动

function r_left(){
	if(dir==-1)
	dir=1;
}//换向左移

function r_right(){
	if(dir==1)
	dir=-1;
}//换向右移

function IsIE(){
	var browser=navigator.appName
	if((browser=="Netscape")){
		return false;
	}
	else if(browser=="Microsoft Internet Explorer"){
		return true;
	}else{
		return null;
	}
}

var _IsIE = IsIE();
var _MousePX = 0;
var _MousePY = 0;
var _DivLeft = 0;
var _DivRight = 0;
var _AllDivWidth = 0;
var _AllDivHeight = 0;

function MoveDiv(e){

	var obj = document.getElementById("scrollbox");
	_MousePX = _IsIE ? (document.body.scrollLeft + event.clientX) : e.pageX;
	_MousePY = _IsIE ? (document.body.scrollTop + event.clientY) : e.pageY;
	//Opera Browser Can Support ''window.event'' and ''e.pageX''
	
	var obj1 = null;

	if(obj.getBoundingClientRect){
		//IE
		obj1 = document.getElementById("scrollbox").getBoundingClientRect();
		_DivLeft = obj1.left;
		_DivRight = obj1.right;
		_AllDivWidth = _DivRight - _DivLeft;
	}else if(document.getBoxObjectFor){
		//FireFox
		obj1 = document.getBoxObjectFor(obj); 
		var borderwidth = (obj.style.borderLeftWidth != null && obj.style.borderLeftWidth != "") ? parseInt(obj.style.borderLeftWidth) : 0;
		_DivLeft = parseInt(obj1.x) - parseInt(borderwidth);
		_AllDivWidth = Cut_Px(obj.style.width);
		_DivRight = _DivLeft + _AllDivWidth;
	}else{
		//Other Browser(Opera)
		_DivLeft = obj.offsetLeft;
		_AllDivWidth = Cut_Px(obj.style.width);
		var parent = obj.offsetParent;
		
		if(parent != obj){
			while (parent){  
				_DivLeft += parent.offsetLeft; 
				parent = parent.offsetParent;
			}
		}
		_DivRight = _DivLeft + _AllDivWidth;
	}

	var pos1,pos2;
	pos1 = parseInt(_AllDivWidth * 0.4) + _DivLeft;
	pos2 = parseInt(_AllDivWidth * 0.6) + _DivLeft;

	if(_MousePX > _DivLeft && _MousePX < _DivRight){
		if(_MousePX > _DivLeft && _MousePX < pos1){
			r_left(); //Move left
		}
		else if(_MousePX < _DivRight && _MousePX > pos2){
			r_right(); //Move right
		}
		if(_MousePX > pos1 && _MousePX < pos2){
			onmouseoverMy(); //Stop
			MyMar=null;
		}else if(_MousePX < pos1 || _MousePX > pos2){
			if(MyMar==null){
				MyMar=setInterval(Marquee,speed);
			}
		}
	}
}

function Cut_Px(cswidth){
	cswidth = cswidth.toLowerCase();
	if(cswidth.indexOf("px") != -1){
		cswidth.replace("px","");
		cswidth = parseInt(cswidth);
	}
	return cswidth;
}

function MoveOutDiv(){
	if(MyMar == null){
		MyMar=setInterval(Marquee,speed);
	}
}
</script>

<!--header begin-->
<div id="header">

	<div class="data">
		<div class="data-box">
			<script type="text/javascript">
      			var isIE = (document.all && window.ActiveXObject && !window.opera) ? true : false;
      			today=new Date();
      			var thisYear = today.getFullYear();
      			//if(!isIE) thisYear = thisYear + 1900;
     			function initArray(){
      				this.length=initArray.arguments.length
      				for(var i=0;i<this.length;i++)
      				this[i+1]=initArray.arguments[i] }
      			var d=new initArray("星期日","星期一","星期二","星期三","星期四","星期五","星期六"); document.write("",thisYear,"年","",today.getMonth()+1,"月","",today.getDate(),"日&nbsp; ",d[today.getDay()+1]);
    		</script>
    	</div>
	</div>
    
	<div class="header-box">
		<div class="header-box-content">
			<div class="logo">
				<img src="images/logo.png">
			</div>
    		<div id="search">
      			<form>
        			<input type="text" name="search" class="search1" onmouseover="this.style.color='#666';" onmouseout="if (this.value == '请输入需要查询的信息'){this.style.color = '#777'}" onblur="if (this.value == '') { this.value = '请输入需要查询的信息'; this.style.color = '#777' } else { this.style.color = '#666'; }" onclick="if (this.value == '请输入需要查询的信息') { this.value = ''; this.style.color = '#666'; }" value="请输入需要查询的信息" />
        			<input type="submit" name="buttom" vaule="search" class="search2"/>
      			</form>
    		</div>
		</div>
	</div>
    
</div>
<!--header end-->

<!-- nav begin -->
<div id="navMenu">
	<ul>
    	<li class="onelink"><a href="#" target="_blank">首&nbsp;&nbsp;页</a></li>
    	<li><a href="#"  rel='dropmenu1' target="_blank">科技动态</a></li>
    	<li><a href="#"  rel='dropmenu1' target="_blank">财务公开</a></li>
    	<li><a href="#" target="_blank">政策法规</a></li>
    	<li><a href="#" target="_blank">高新技术</a></li>
    	<li><a href="#" target="_blank">创意产业</a></li>
    	<li><a href="#" target="_blank">知识产权</a></li>
    	<li><a href="#" target="_blank">企业之窗</a></li>
    	<li><a href="#" target="_blank">科技服务</a></li>
    	<li><a href="#" target="_blank">科技合作</a></li>
    	<li><a href="#" target="_blank">项目管理</a></li>
    </ul>
</div>

<script type='text/javascript' src='js/dropdown.js'></script>
<ul id="dropmenu1" class="dropMenu">
    <li><a href="#" target="_blank">通知公告</a></li>
    <li><a href="#" target="_blank">实验室动态</a></li>
    <li><a href="#" target="_blank">学术报告</a></li>
</ul>

<script type="text/javascript">cssdropdown.startchrome("navMenu")</script>

<!-- nav end -->

<!--container begin-->
<div id="container">
	
	<div class="container-top">

		<div class="container-top-photo">
			<div class="silder" id="silder">
  				<ul class="silder_list" id="silder_list">
    				<li> <img src="images/11.jpg" border="0" alt="我是图片新闻1"> </li>
    				<li> <img src="images/8.jpg" border="0" alt="我是图片新闻2"> </li>
    				<li> <img src="images/9.jpg" border="0" alt="我是图片新闻3"> </li>
    				<li> <img src="images/10.jpg" border="0" alt="我是图片新闻4"> </li>
  				</ul>
			</div>	
		</div>

		<div class="container-top-content">
			<h3>最新动态</h3>
			<a href="#"><img src="images/more.png"></a>
			<ul>
              	<li>
                 	<span class="news1"><a href="#"> 余杭区建设工程地震安全性评价相关表格下载</a></span>
                 	<span class="news2">2014-05-26</span>
                </li>
			</ul>
		</div>
		
	</div>
	<div class="container-middle">
		<div class="container-middle-left">
            <h3>通知公告</h3>
		    <a href="#"><img src="images/more.png"></a>
            <ul>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li> 
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li> 
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
              	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
           	</ul>	
		</div>
		<div class="container-middle-middle" style="margin-left: 5px;">
            <h3>政策法规</h3>
		    <a href="#"><img src="images/more.png"></a>
            <ul>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li> 
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li> 
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
              	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
               	<li><a href="#">余杭区建设工程地震安全性评价相关表格下载</a></li>
           	</ul>	
		</div>
		<div class="container-middle-right">
			<div class="container-middle-right-ul">
           		<ul>
               		<li><a class="mBodyR_a" href="#">产学研对接平台</a></li>
               		<li><a class="mBodyR_a" href="#">防震减灾</a></li>
               		<li><a class="mBodyR_a" href="#">产学研对接平台</a></li>
               		<li><a class="mBodyR_a" href="#">防震减灾</a></li>
               		<li><a class="mBodyR_a" href="#">产学研对接平台</a></li>
               		<li><a class="mBodyR_a" href="#">防震减灾</a></li>
           		</ul>    
         	</div>
		</div>

	</div>

	<div class="container-roll">
		<div class="scroll" id="scrollbox" onMouseMove="MoveDiv(event);" onMouseOut="MoveOutDiv();">
		<div id="scrollcon" style="width:100%;">
			<table>
				<tbody>
					<tr>
						<td valign="top">							
							<table width="100%">
								<tr>
									<td align="center"><a href="#" target="_blank">
										<img height="130" width="190" src="images/1.jpg" />
										<span class="scroll_span">杭州诺贝尔集团</span>
									</a></td>
									<td align="center"><a href="#" target="_blank">
										<img height="130" width="190" src="images/2.jpg" />
										<span class="scroll_span">杭州诺贝尔集团</span>
									</a></td>
									<td align="center"><a href="#" target="_blank">
										<img height="130" width="190" src="images/3.jpg" />
										<span class="scroll_span">杭州诺贝尔集团</span>
									</a></td>
									<td align="center"><a href="#" target="_blank">
										<img height="130" width="190" src="images/4.jpg" />
										<span class="scroll_span">杭州诺贝尔集团</span>
									</a></td>
									<td align="center"><a href="#" target="_blank">
										<img height="130" width="190" src="images/5.jpg" />
										<span class="scroll_span">杭州诺贝尔集团</span>
									</a></td>
									<td align="center"><a href="#" target="_blank">
										<img height="130" width="190" src="images/6.jpg" />
										<span class="scroll_span">杭州诺贝尔集团</span>
									</a></td>
									<td align="center"><a href="#" target="_blank">
										<img height="130" width="190" src="images/7.jpg" />
										<span class="scroll_span">杭州诺贝尔集团</span>
									</a></td>
								</tr>
							</table>
						</td>
						<td><div id="scrollcopy" style="width:100%;"></div></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
	 document.getElementById("scrollcopy").innerHTML = document.getElementById("scrollcon").innerHTML;
 	MyMar=setInterval(Marquee,speed);
	</script>
	</div>
	
</div>
<!--container end-->

<!-- link begin -->
<div class="link">
	<div class="link-context">
		<h3>友情链接</h3>
		<select class="mselect" style="margin-left:30px;" firstitemtext="---重点实验室---" onchange="WpTagOpenWin(this.value);this.selectedIndex = 0;" name="friendlink">
            <option value="#">---重点实验室---</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
        </select>
        <select class="mselect" firstitemtext="---重点实验室---" onchange="WpTagOpenWin(this.value);this.selectedIndex = 0;" name="friendlink">
            <option value="#">---重点实验室---</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
        </select>
        <select class="mselect" firstitemtext="---重点实验室---" onchange="WpTagOpenWin(this.value);this.selectedIndex = 0;" name="friendlink">
            <option value="#">---重点实验室---</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
        </select>
        <select class="mselect" firstitemtext="---重点实验室---" onchange="WpTagOpenWin(this.value);this.selectedIndex = 0;" name="friendlink">
            <option value="#">---重点实验室---</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
        </select>
        <select class="mselect" firstitemtext="---重点实验室---" onchange="WpTagOpenWin(this.value);this.selectedIndex = 0;" name="friendlink">
            <option value="#">---重点实验室---</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
        </select>
        <select class="mselect" firstitemtext="---重点实验室---" onchange="WpTagOpenWin(this.value);this.selectedIndex = 0;" name="friendlink">
            <option value="#">---重点实验室---</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
            <option value="#">荷尖角重点实验室</option>
        </select>
    </div>
</div>
<!-- link end -->

<!--footer begin-->
<div id="footer">
	
	<p>  注重问题导向 强化精准合作----浙江大学邹晓东副书记调研余杭科技创新工作</p>
    <p>地址：杭州·余杭·临平·东湖中路239号 电话：0571-86225435 </p>
	<p>Copyright © 2005-2008 <a href="login.jsp">余杭区科学技术局</a> YHKJJ.GOV.CN All Rights Reserved</p>
</div>
<!--footer end-->

</body>
</html>
