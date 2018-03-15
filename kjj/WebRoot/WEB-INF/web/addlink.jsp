<%@page language="java" contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>其他管理</title>
<link href="css/addlink.css"type="text/css" rel="stylesheet" />
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
<div class="bg2"><p><b>主页/<span>其他管理</span></b></p></div>
<div class="clearbox"></div>
<!----------------top end-------------------->

<!----------main start----------------------------->
<div id="container">  
  		<div class="box demo2">
			<ul class="tab_menu">
				<li class="current">添加链接</li>
				<li>管理链接</li>
				<li>团队荣誉</li>
				
			</ul>
			<div class="tab_box">
				<div>
                    <ul>
            <form action="web?status=web" method="post">
           <label>链接名称：</label><br /><input type="text" class="input" name="name"/> <br />
           <label>链接地址:</label><br /><input type="text" class="input" name="address"/><br />
           <input class="button" type="submit" name="" value="添加链接" />
            </form>

					</ul>
				</div>
				<div class="hide">
                	<ul>
    <table id="grid" >
        <tr class="title">
<th>ID</th><th>链接名称</th><th>链接地址</th><th colspan="3">操作</th>
        </tr>
        <tr> 
        <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" />        </td>
        <td>荷尖角</td>
        <td></td>
        <td><a href="#">查看</a></td>
        <td><a href="#">修改</a></td>
        <td><a href="#">删除</a></td>
        </tr>
  </table>	
  <div class="clear"></div>
      <div>
      <input class="button" type="submit"  name="" id="allchoose" value="全选" />
      <input class="button" type="submit"  name="" id="delete" value="删除" />
      <input class="button" type="submit"  name="" id="reverse" value="反选" />
      </div>
     
      <div class="clearbox"></div>
      <div class="part2">
      <a href="#">&lt;&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a>...<a href="#">100</a><a href="#">101</a><a href="#">&gt;&gt;</a>
      </div>
				
                 </ul>
				</div>
				<div class="hide">
                	<ul>
    <table id="grid" >
        <tr class="title">
<th>序号</th><th>标题</th><th>图片</th><th colspan="3">操作</th>
        </tr>
        <tr> 
        <td>1 </td>
        <td>优秀团队</td>
        <td></td>
        <td><a href="#">查看</a></td>
        <td><a href="#">修改</a></td>
        <td><a href="#">删除</a></td>
        </tr>
  </table>	
  <div class="clear"></div>
      <div>
      <input class="button" type="submit"  name="" id="allchoose" value="全选" />
      <input class="button" type="submit"  name="" id="delete" value="删除" />
      <input class="button" type="submit"  name="" id="reverse" value="反选" />
      </div>
     
      <div class="clearbox"></div>
      <div class="part2">
      <a href="#">&lt;&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a>...<a href="#">100</a><a href="#">101</a><a href="#">&gt;&gt;</a>
      </div>
				
                 </ul>
				</div>
				
                
              </div>
            </div>
</div>
<!----------main end----------------------------->

</body>
</html>
