// JavaScript Document
$(document).ready(function(){

	//全选
	$("#allchoose").bind("click",function(){
		$("#checked input[type=checkbox]").checkBox("all");
	});
	
	// 取消
	$("#delete").bind("click",function(){
		$("#checked input[type=checkbox]").checkBox("none");
	});
	
	//反选
	$("#reverse").bind("click",function(){
		$("#checked input[type=checkbox]").checkBox("toggle");
	});
	
	//输出
	$("#exit").bind("click",function(){
		alert($("#checked input[type=checkbox][checked]").checkedValue());
	});
	
});