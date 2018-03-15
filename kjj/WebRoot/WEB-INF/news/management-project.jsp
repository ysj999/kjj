<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理</title>
<link  href="css/management-project.css"type="text/css" rel="stylesheet" />
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
<div class="bg2"><p><b>主页/<span>管理项目</span></b></p></div>
<div class="clearbox"></div>
<!----------------top end-------------------->





<!----------main start添加项目信息----------------------------->
<div id="container">  
  		<div class="box demo2">
			<ul class="tab_menu">
				<li class="current">项目信息</li>
				<li>项目管理</li>
				
			</ul>
			<div class="tab_box">
				<div>
					<ul>
            <form>
           <label> 项目状态:</label><br /><input type="text" class="input" /><br />
           <label> 网站名称:</label><br /><input type="text" class="input" /><br />
           <label> 网站类型:</label><br /><input type="text" class="input" /><br />
           <label> 建站时间:</label><br /><input type="text" class="input" /><br />
           <label> 建站工具:</label><br /><input type="text" class="input" /><br />
           <label> 上传图片:</label><br /><input type="text" class="input" />&nbsp;&nbsp;&nbsp;&nbsp;      <input class="button" type="submit"  name=""  value="浏览..." /><br />
<input class="button" type="submit"  name=""  value="上传" />

            </form>
					</ul>



					<!--项目管理页面 -->
				</div>
				<div class="hide">
					<ul>
                    <p class="choses">
                    <form>
                    <label>关键字：</label><input type="text" class="input"  style="width:300px; margin-right:20px;"/><input type="button" value="查找" class="button" />
                    </form>
                     </p>  
                     <div class="clear"></div>
                   
                
    <table id="grid" >
        <tr class="title">
                            <th>ID</th><th>项目状态</th><th>网站名称</th><th>网站类型</th><th>建站时间</th><th>建站工具</th><th>网站地址</th><th colspan="3">操作</th>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>项目ing</td>
            <td>荷尖角后台管理页面</td>
            <td>后台使用</td>
            <td>2013-11-03</td>
            <td>heml+css+js</td>
            <td>http://www.geog.hbnu.edu.cn</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>项目ing</td>
            <td>荷尖角后台管理页面</td>
            <td>后台使用</td>
            <td>2013-11-03</td>
            <td>heml+css+js</td>
            <td>http://www.geog.hbnu.edu.cn</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>项目ing</td>
            <td>荷尖角后台管理页面</td>
            <td>后台使用</td>
            <td>2013-11-03</td>
            <td>heml+css+js</td>
            <td>http://www.geog.hbnu.edu.cn</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>项目ing</td>
            <td>荷尖角后台管理页面</td>
            <td>后台使用</td>
            <td>2013-11-03</td>
            <td>heml+css+js</td>
            <td>http://www.geog.hbnu.edu.cn</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>项目ing</td>
            <td>荷尖角后台管理页面</td>
            <td>后台使用</td>
            <td>2013-11-03</td>
            <td>heml+css+js</td>
            <td>http://www.geog.hbnu.edu.cn</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>项目ing</td>
            <td>荷尖角后台管理页面</td>
            <td>后台使用</td>
            <td>2013-11-03</td>
            <td>heml+css+js</td>
            <td>http://www.geog.hbnu.edu.cn</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        
   </table>
   <!---表格变色start--->
<script type="text/javascript" src="js/colorchangetabs.js"></script>
<script type="text/javascript">
//grid("名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
grid("grid","#fff","#fff","#F5E8CD","#fff");
</script>
<!---表格变色end--->

                     
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
