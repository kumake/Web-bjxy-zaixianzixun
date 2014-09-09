<%
dim ip,oldtime,subtime
ip=request.ServerVariables("REMOTE_ADDR")

oldtime=application(ip)

if oldtime<>"" then
	subtime = DateDiff("n",oldtime,now())
	if subtime<5 then
	response.write "<script>alert('对不起，请耐心等待"&(5-subtime)&"分钟再留言!');history.back();</script>"
	response.end
	end if
end if 


%>

<%=C%>




<head>
<title>
滨江学院2010年高考招生在线咨询
</title>
<script>
	function checkForm(){
		if (bookForm.title.value==""){
			alert("标题不能为空");
			return false;
		}
		if (bookForm.name.value==""){
			alert("姓名不能为空");
			return false;
		}
		if (bookForm.content.value==""){
			alert("咨询内容不能为空");
			return false;
		}
		if (bookForm.yzm.value==""){
			alert("验证码不能为空");
			return false;
		}
		return true;
	}
	
</script>
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
<!--
.STYLE1 {color: #FF3333}
.STYLE2 {font-family: "新宋体"}
.STYLE3 {font-size: 16px}
-->
</style>
</head>
<body background=diwen.gif>
<form action="book_save.asp" name="bookForm" method="post" onsubmit="return checkForm();">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="500" border="0" align="center" cellpadding="5" cellspacing="1">
    <tr>
      <td width="62">昵称：</td>
      <td width="415"><input name="name" type="text" id="name" size="20" />
        <span style="color:Red">* </span></td>
    </tr> 
<h1 align="center" class="STYLE2"> 滨江学院2010年高考招生在线咨询</h1>
  
  <tr>
    <td>标题：</td>
    <td><input name="title" type="text" id="title" size="50" />
      <span style="color:Red">* </span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>咨询内容：</td>
    <td><textarea name="content" cols="50" rows="15" id="content"></textarea></td>
  </tr>
  <tr>
    <td>验证码：</td>
    <td><input name="yzm" type="text" id="yzm" size="8" />　<img src="yzm/code.asp" border="0">
      <span style="color:Red">* </span></td>
	
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="留言" />
      <input type="reset" name="Submit2" value="重填" />
	  <input type="button" name="Submit2" value="返回" onclick="history.back();" />	</td>
  </tr>
</table>
</form>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">www.BJXY.cn &copy; 2009 All Rights Reserved. <br>
   招生热线：18951997777、18951997770、18951997677<br>
页面制作：滨江学院 <a href="login.asp" target="_blank">管理入口</a></p>
</body>