<%	

	dim id

	id=trim(request("id"))
	if not isnumeric(id) then
	response.write "<script>alert('�Ƿ�����!');history.back();</script>"
	response.end
	end if

	if Instr(id,"-")>0 then
	response.write "<script>alert('�Ƿ�����!');history.back();</script>"
	response.end
	end if

dim page_num
	
	page_num=trim(request("page"))
	if  page_num="" then        
	   page_num=1  
 	   end if
	if not isnumeric(page_num) then
	response.write "<script>alert('�Ƿ�����!');history.back();</script>"
	response.end

	if  page_num<1 then        
	   page_num=1  
 	   end if


	end if
%>

<head>
<title>
����ѧԺ2010��߿�����������ѯ
</title>


<!--#include file="conn.asp"-->

<% 
	dim title
	dim content
	dim bookdate
	dim email
	dim tname
	dim rs
	dim sql	
	'�������Լ�¼
	sql="select * from book where id="& id
	set rs = conn.execute (sql)
	if not rs.eof then
		title=rs("title")
		content=rs("content")
		bookdate=rs("bookdate")
		email=rs("email")
		tname=rs("name")
	end if
	rs.close
	set rs=nothing
	

%>
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
<!--
.STYLE2 {font-size: 24px}
.STYLE3 {font-size: 18px}
-->
</style>
</head>
<body background=diwen.gif>
<form action="book_revert_save.asp?page=<%=page_num%>" name="bookForm" method="post" onsubmit="return checkForm();">
<input type="hidden" name="id" value="<%=id%>"/>
<table width="500" border="0" align="center" cellpadding="5" cellspacing="1"> 
<caption>
<span class="STYLE2">���Իظ�</span>
</caption>
  <tr>
    <td colspan="2"><div align="right"><%=bookdate%></div></td>
    </tr>
  <tr>
    <td><span class="STYLE3">���⣺</span></td>
    <td><%=title%></td>
  </tr>
  <tr>
    <td><span class="STYLE3">�ǳƣ�</span></td>
    <td><%=tname%></td>
  </tr>
  <tr>
    <td><span class="STYLE3">��ѯ���ݣ�</span></td>
    <td height="50"><%=content%></td>
  </tr>
  <tr>
    <td><span class="STYLE3">�ظ���</span></td>
    <td><textarea name="revert" cols="50" rows="15"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="�ظ�" />
      <input type="reset" name="Submit2" value="����" />
	  <input type="button" name="Submit2" value="����" onclick="history.back();" />	</td>
  </tr>
</table>
</form>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">www.BJXY.cn &copy; 2009 All Rights Reserved. <br>
   �������ߣ�18951997777��18951997770��18951997677<br>
ҳ������������ѧԺ <a href="login.asp" target="_blank">�������</a></p>
</body>