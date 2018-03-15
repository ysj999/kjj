<%@page language="java" contentType="text/html; charset=utf-8" %>
<html>
<head>

<title>成员管理</title>
<link  href="css/addmember.css"type="text/css" rel="stylesheet" />
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
<div class="bg2"><p><b>主页/<span>成员管理</span></b></p></div>
<div class="clearbox"></div>
<!----------------top end-------------------->

<!----------main start----------------------------->
<div id="container">  
  		<div class="box demo2">
			<ul class="tab_menu">
				<li class="current">管理成员</li>
				<li>添加成员</li>
				
			</ul>
			<div class="tab_box">
				<div>
                	<ul>
                    <p class="choses">
                    <form>
        <select class="select">
		<option value="第七届"  selected="selected">第七届</option>
		<option value="第六届" >第六届</option>
		<option value="第五届" >第五届</option>
		<option value="第四届" >第四届</option>
		<option value="第三届" >第三届</option>
		<option value="第二届" >第二届</option>
		<option value="第一届" >第一届</option>
	    </select><br />
                    </form>
                     </p>  
                     <div class="clear"></div>
                   
                
    <table id="grid" >
        <tr class="title">
                            <th>ID</th><th>姓名</th><th>性别</th><th>第几届</th><th>技术方向</th><th>现任职务</th><th>专业班级</th><th colspan="3">操作</th>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>安之 	  </td>
                            <td>女</td> 
                            <td>第七届</td>
                            <td>美工组</td>
                            <td>前台开发</td>
                            <td>教育技术学1101 </td>
                            <td><a href="#">查看</a></td>
                            <td><a href="#">修改</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>安之 	  </td>
                            <td>女</td> 
                            <td>第七届</td>
                            <td>美工组</td>
                            <td>前台开发</td>
                            <td>教育技术学1101 </td>
                            <td><a href="#">查看</a></td>
                            <td><a href="#">修改</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>安之 	  </td>
                            <td>女</td> 
                            <td>第七届</td>
                            <td>美工组</td>
                            <td>前台开发</td>
                            <td>教育技术学1101 </td>
                            <td><a href="#">查看</a></td>
                            <td><a href="#">修改</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>安之 	  </td>
                            <td>女</td> 
                            <td>第七届</td>
                            <td>美工组</td>
                            <td>前台开发</td>
                            <td>教育技术学1101 </td>
                            <td><a href="#">查看</a></td>
                            <td><a href="#">修改</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>安之 	  </td>
                            <td>女</td> 
                            <td>第七届</td>
                            <td>美工组</td>
                            <td>前台开发</td>
                            <td>教育技术学1101 </td>
                            <td><a href="#">查看</a></td>
                            <td><a href="#">修改</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>安之 	  </td>
                            <td>女</td> 
                            <td>第七届</td>
                            <td>美工组</td>
                            <td>前台开发</td>
                            <td>教育技术学1101 </td>
                            <td><a href="#">查看</a></td>
                            <td><a href="#">修改</a></td>
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
				<div class="hide">
                					<ul>
            <form>
           <label> 姓名：</label><br /><input type="text" class="input" /> 
        </select>
        <select class="select">
		<option value="女"  selected="selected">女</option>
		<option value="男" >男</option>
	    </select><br />

           <label> 出生年月:</label><br /><input type="text" class="input" />
        </select>
        <select class="select">
		<option value="美工组"  selected="selected">美工组</option>
		<option value="程序组" >程序组</option>
	    </select><br />
           <label> 联系方式:</label><br /><input type="text" class="input" />                <select class="select">
		<option value="第七届"  selected="selected">第七届</option>
		<option value="第六届" >第六届</option>
		<option value="第五届" >第五届</option>
		<option value="第四届" >第四届</option>
		<option value="第三届" >第三届</option>
		<option value="第二届" >第二届</option>
		<option value="第一届" >第一届</option>
	    </select><br />

           <label> 现任职务:</label><br /><input type="text" class="input" /><br />
           <label> 专业:</label><br /><input type="text" class="input" /><br />
           <label>荷尖角寄语:<br /></label> <textarea rows="2" id="message" name="message"></textarea><br />
           <label>荷尖角回忆:<br /></label> <textarea rows="10" id="message" name="message"></textarea><br />
           <label> 上传个人照片:</label><br /><input type="text" class="input" />&nbsp;&nbsp;&nbsp;&nbsp;      <input class="button" type="submit"  name=""  value="浏览..." /><br />
<input class="button" type="submit"  name=""  value="上传" />

            </form>
					</ul>

				</div>
				
                
              </div>
            </div>
</div>
<!----------main end----------------------------->

</body>
</html>
