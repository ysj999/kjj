<%@page language="java" contentType="text/html; charset=utf-8" %>
<html>
<head>

<title>文件管理</title>
<link href="css/filesupload.css"type="text/css" rel="stylesheet" />
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
<div class="bg2"><p><b>主页/<span>文件管理</span></b></p></div>
<div class="clearbox"></div>
<!----------------top end-------------------->

<!----------main start----------------------------->
<div id="container">  
  		<div class="box demo2">
			<ul class="tab_menu">
				<li class="current">文件管理</li>
				<li>上传文件</li>
				<li>代码管理</li>
				<li>成员架构</li>
				
			</ul>
			<div class="tab_box">
				<div>
                    <ul>
                    <p class="choses">
                    <form>
                    <label>关键字：</label><input type="text" class="input"  style="width:300px; margin-right:20px;"/><input type="button" value="查找" class="button" />
                    </form>
                     </p>  
                     <div class="clear"></div>
                   
                
    <table id="grid" >
        <tr class="title">
                            <th>ID</th><th>文件标题</th><th>文件格式</th><th>上传时间</th><th colspan="2">操作</th>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>SCJP考试简介</td>
                            <td>.doc</td> 
                            <td>2013-10-21</td>
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>ps认证考试简介</td>
                            <td>.doc</td> 
                            <td>2013-10-21</td>
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>SCJP考试简介</td>
                            <td>.doc</td> 
                            <td>2011-10-21</td>
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>ps认证考试简介</td>
                            <td>.doc</td> 
                            <td>2011-10-21</td>
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>SCJP考试简介</td>
                            <td>.doc</td> 
                            <td>2011-10-21</td>
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>ps认证考试简介</td>
                            <td>.doc</td> 
                            <td>2011-10-21</td>
                            <td><a href="#">下载</a></td>
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
           <label>文件类型：</label><br /><input type="text" class="input" /> 
        </select>
        <select class="select">
		<option value="上传类型"  selected="selected">上传类型</option>
		<option value="文件下载" >文件下载</option>
		<option value="代码管理" >代码管理</option>
		<option value="成员架构" >成员架构</option>
	    </select><br />

           <label>填写标题:<br /></label> <textarea rows="2" id="message" name="message"></textarea><br />
           <label>填写描述:<br /></label> <textarea rows="7" id="message" name="message"></textarea><br />
           <label> 现任职务:</label><br /><input type="text" class="input" /><br />
           <label> 选择文件:</label><br /><input type="text" class="input" />&nbsp;&nbsp;&nbsp;&nbsp;      <input class="button" type="submit"  name=""  value="浏览..." /><br />
<input class="button" type="submit"  name=""  value="上传" />

            </form>
					</ul>
				</div>
                <div class="hide">
                    <ul>
                    <table id="grid" >
        <tr class="title">
                            <th>ID</th><th>标题</th><th>描述</th><th colspan="2">操作</th>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>美术学院网站</td>
                            <td>学院类型</td> 
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>美术学院网站</td>
                            <td>学院类型</td> 
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>美术学院网站</td>
                            <td>学院类型</td> 
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>美术学院网站</td>
                            <td>学院类型</td> 
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>美术学院网站</td>
                            <td>学院类型</td> 
                            <td><a href="#">下载</a></td>
                            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>美术学院网站</td>
                            <td>学院类型</td> 
                            <td><a href="#">下载</a></td>
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
                        <table id="grid" >
        <tr class="title">
                            <th>ID</th><th>名字</th><th>内容</th><th>操作</th>
        </tr>
                        <tr>
                            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
                            <td>成员架构图</td>
                            <td class="left">团队采用混合管理模式，核心团队的每一个成员由指导老师垂直<br />进行管理，每周要向指导老师提交周计划和总结。同时团队自设管理机制，分别负责团队日常事务管理和团队的技术方向监控实施。</td> 
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
