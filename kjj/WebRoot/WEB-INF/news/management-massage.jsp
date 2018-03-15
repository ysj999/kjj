<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link  href="css/management-massage.css" type="text/css" rel="stylesheet"/>
<title>留言管理</title>
</head>

<body>
<!-----------------top start----------->
<div class="bg1">
<img src="images/main-bg1.jpg"/>
</div>
<div class="bg2"><p><b>主页/<span>留言管理</span></b></p></div>
<!----------------top end-------------------->

<!----------main start----------------------------->
<div id="container">
    <div class="part1">
                    <form>
                    <label>关键字：</label>
                    <input type="text" class="input"  style="width:300px; margin-right:20px;"/><input type="button" value="查找" class="button" />
                    </form>
    </div>
    <div id="checked">
    <label>留言列表</label>
    <div class="clearbox"></div>

    <table id="grid" >
        <tr class="title">
            <th>留言ID</th><th>留言标题</th><th>审核状况</th><th>留言者</th><th>发布时间</th><th>留言内容</th><th colspan="3">操作</th>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>青春不是梦，未来在路上</td>
            <td>已通过</td>
            <td>安之</td>
            <td>2013-11-03 22:27:26</td>
            <td>给我再去相信的勇气，穿越谎言去拥抱你</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>青春不是梦，未来在路上</td>
            <td>已通过</td>
            <td>安之</td>
            <td>2013-11-03 22:27:26</td>
            <td>给我再去相信的勇气，穿越谎言去拥抱你</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>青春不是梦，未来在路上</td>
            <td>已通过</td>
            <td>安之</td>
            <td>2013-11-03 22:27:26</td>
            <td>给我再去相信的勇气，穿越谎言去拥抱你</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>青春不是梦，未来在路上</td>
            <td>已通过</td>
            <td>安之</td>
            <td>2013-11-03 22:27:26</td>
            <td>给我再去相信的勇气，穿越谎言去拥抱你</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>青春不是梦，未来在路上</td>
            <td>已通过</td>
            <td>安之</td>
            <td>2013-11-03 22:27:26</td>
            <td>给我再去相信的勇气，穿越谎言去拥抱你</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>青春不是梦，未来在路上</td>
            <td>已通过</td>
            <td>安之</td>
            <td>2013-11-03 22:27:26</td>
            <td>给我再去相信的勇气，穿越谎言去拥抱你</td>
            <td><a href="#">预览</a></td>
            <td><a href="#">编辑</a></td>
            <td><a href="#">删除</a></td>
        </tr>
        <tr>
            <td><input name="checkbox" type="checkbox" value="checkbox1" id="checkbox1" /></td>
            <td>青春不是梦，未来在路上</td>
            <td>已通过</td>
            <td>安之</td>
            <td>2013-11-03 22:27:26</td>
            <td>给我再去相信的勇气，穿越谎言去拥抱你</td>
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

    </div>
<!------------------------控制全选反选js start ----------------------------->
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/jquery.checkbox.js"></script>
<script type="text/javascript" src="js/jquery.checkbox2.js"></script>
<!------------------------控制全选反选js end-------------------------------->

      <div>
      <input class="button" type="submit"  name="" id="allchoose" value="全选" />
      <input class="button" type="submit"  name="" id="delete" value="删除" />
      <input class="button" type="submit"  name="" id="reverse" value="反选" />
      </div>
      <div class="clearbox"></div>
      <div class="part2">
      <a href="#">&lt;&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a>...<a href="#">100</a><a href="#">101</a><a href="#">&gt;&gt;</a>
      </div>
      

</div>





<!----------main end----------------------------->

</body>
</html>
