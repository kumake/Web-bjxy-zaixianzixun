<%
dim ip,oldtime,subtime
ip=request.ServerVariables("REMOTE_ADDR")

oldtime=application(ip)

if oldtime<>"" then
	subtime = DateDiff("n",oldtime,now())
	if subtime<5 then
	response.write "<script>alert('�Բ��������ĵȴ�"&(5-subtime)&"����������!');history.back();</script>"
	response.end
	end if
end if 


%>

<%=C%>




<head>
<title>
����ѧԺ2010��߿�����������ѯ
</title>
<script>
	function checkForm(){
		if (bookForm.title.value==""){
			alert("���ⲻ��Ϊ��");
			return false;
		}
		if (bookForm.name.value==""){
			alert("��������Ϊ��");
			return false;
		}
		if (bookForm.content.value==""){
			alert("��ѯ���ݲ���Ϊ��");
			return false;
		}
		if (bookForm.yzm.value==""){
			alert("��֤�벻��Ϊ��");
			return false;
		}
		return true;
	}
	
</script>
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
<!--
.STYLE1 {color: #FF3333}
.STYLE2 {font-family: "������"}
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
      <td width="62">�ǳƣ�</td>
      <td width="415"><input name="name" type="text" id="name" size="20" />
        <span style="color:Red">* </span></td>
    </tr> 
<h1 align="center" class="STYLE2"> ����ѧԺ2010��߿�����������ѯ</h1>
  
  <tr>
    <td>���⣺</td>
    <td><input name="title" type="text" id="title" size="50" />
      <span style="color:Red">* </span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>��ѯ���ݣ�</td>
    <td><textarea name="content" cols="50" rows="15" id="content"></textarea></td>
  </tr>
  <tr>
    <td>��֤�룺</td>
    <td><input name="yzm" type="text" id="yzm" size="8" />��<img src="yzm/code.asp" border="0">
      <span style="color:Red">* </span></td>
	
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="����" />
      <input type="reset" name="Submit2" value="����" />
	  <input type="button" name="Submit2" value="����" onclick="history.back();" />	</td>
  </tr>
</table>
</form>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">www.BJXY.cn &copy; 2009 All Rights Reserved. <br>
   �������ߣ�18951997777��18951997770��18951997677<br>
ҳ������������ѧԺ <a href="login.asp" target="_blank">�������</a></p>
</body>