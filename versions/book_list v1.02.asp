<!--#include file="conn.asp"-->
<%
	dim isVisible'���������Ƿ�ɼ�
	if session("admin")<>"" then
		isVisible=true
	else
		isVisible=false	
	end if
%>
<head>
<title>
����ѧԺ2009��߿�����������ѯ
</title>
<script language=javascript>
function MM_jumpMenu(targ,selObj,restore){ //v3.0 
eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'"); 
if (restore) selObj.selectedIndex=0; 
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
<h1 align="center" class="STYLE2"> ����ѧԺ2009��߿�����������ѯ</h1>
<table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
  <tr>
    <td><div align="center"><a href="book.asp" class="STYLE1 STYLE3">��Ҫ��ѯ</a></div></td>
  </tr>
</table>
<%
	dim sql
	dim rs
	dim rstop
	dim page_size
	dim top_count
	page_size=5
	top_count=0
	set rstop =conn.execute ("select * from book where istop=1 order by bookdate desc")
	do while not rstop.eof 
%>
<%if isVisible then%>
<table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
  <tr>
    <td>
	<div align="right">
	<%if isnull(rstop("revert")) then%>
	<a href="book_revert.asp?id=<%=rstop("id")%>" >�ظ�</a>
	<%
	else
		response.Write("�ظ�")
	end if%>&nbsp;
	<a href="book_totop.asp?id=<%=rstop("id")%>" onClick="return confirm('�Ƿ�ȷ��ȡ���ö���');"></a>&nbsp;	
	<a href="book_del.asp?id=<%=rstop("id")%>" onClick="return confirm('�Ƿ�ȷ��ɾ����');">ɾ��</a>&nbsp;	</div></td>
  </tr>
</table>
<%end if%>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#000000" >
  <tr>
	   <td bgcolor="#FFFFFF"><table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
         <tr>
             <td width="25%">���<b><font color="#003366"><%=rstop("id")%>��</font><font color="#FF00CC"><%=rstop("name")%></font>������</b></td>
             <td width="36%"><b><font color="#003366"><%=rstop("title")%></font></b></td>
             <td width="20%"><div align="right"><b><font color="#003366">IP:<%=rstop("ip")%></font></b></div></td>
             <td width="19%"><div align="right"><b><font color="#666666"><%=rstop("bookdate")%></font></b></div></td>
         </tr>
         </table></td>
  </tr>
  
  <tr>
    <td bgcolor="#F7F7F7"><table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
        <tr>
          <td height="50" valign="top">���ԣ�<%=rstop("content")%></td>
        </tr>
      </table></td>
  </tr>
  <%
  	if not isnull(rstop("revert")) then
  %>
  <tr>
    <td bgcolor="#EEEEEE"><table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
      <tr>
        <td height="50" valign="top">�ظ���<%=rstop("revert")%></td>
      </tr>
<%
	end if
%>	  
    </table></td>
  </tr>
</table>


<%		top_count=top_count+1	
		rstop.movenext
	loop
	rstop.close
	set rstop=nothing



	set rs = Server.CreateObject("adodb.recordset")
	sql="select * from book where istop=0 order by bookdate desc"
	rs.open sql,conn,1,1
	

	if request("page")="" or request("page")<1 then        
	   page=1  
	else 
       page=request("page") 	   	   
    end if	   
    rs.PageSize=page_size-top_count             
    rs.AbsolutePage=page  	
	for i=1 to rs.PageSize
%>
<%if isVisible then%>
<table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
  <tr>
    <td>
	<div align="right">
	
	<a href="book_revert.asp?id=<%=rs("id")%>" >�ظ�</a>
	&nbsp;
	<%
		if rs("istop")=0 then
	%>
	<a href="book_totop.asp?id=<%=rs("id")%>" onClick="return confirm('�Ƿ�ȷ���ö���');"></a>&nbsp;
	<%else%>
	<a href="book_totop.asp?id=<%=rs("id")%>" onClick="return confirm('�Ƿ�ȷ��ȡ���ö���');"></a>&nbsp;
	<%end if%>
	<a href="book_del.asp?id=<%=rs("id")%>" onClick="return confirm('�Ƿ�ȷ��ɾ����');">ɾ��</a>&nbsp;	</div></td>
  </tr>
</table>
<%end if%>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#000000" >
  <tr>
    <td bgcolor="#FFFFFF"><table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
      <tr>
        <td width="25%"><font color="#003366">���</font><b><font color="#003366"><%=rs("id")%>��</font><font color="#FF00CC"><%=rs("name")%></font>������</b></td>
        <td width="36%"><%=rs("title")%></td>
        <td width="20%"><div align="right"><strong>IP:<b><font color="#003366"><%=rs("ip")%></font></b></strong></div></td>
        <td width="19%"><div align="right"><b><font color="#666666"><%=rs("bookdate")%></font></b></div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#F7F7F7"><table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
      <tr>
        <td height="50" valign="top">���ԣ�<%=rs("content")%></td>
      </tr>
    </table></td>
  </tr>
  <%
  	if not isnull(rs("revert")) then
  %>
  <tr>
    <td bgcolor="#EEEEEE"><table width="98%" border="0" align="center" cellpadding="5" cellspacing="1">
      <tr>
        <td height="50" valign="top">�ظ���<%=rs("revert")%></td>
      </tr>
      <%
	end if
%>
    </table></td>
  </tr>
</table>
<p align="right">
  <%
		rs.movenext
		if rs.eof then exit for
	next
	
%>
��ǰ��<%=page%>/<%=rs.pagecount%> ����<%=rs.pagecount%>ҳ&nbsp;<%=rs.recordcount%>����¼&nbsp; ÿҳ��ʾ<%=page_size%>����Ϣ&nbsp; &nbsp;
<a href="?page=1">��  ҳ</a>&nbsp;
<%
	if page<=1 then 
		response.Write("��һҳ")
	else	
%>
<a href="?page=<%=page-1%>">��һҳ</a>
<%  end if%>
&nbsp;

<%
	if cint(page)>=cint(rs.pagecount) then
		response.Write("��һҳ")
	else	
%>
<a href="?page=<%=page+1%>">��һҳ</a>
<%end if%>
&nbsp;<a href="?page=<%=rs.pagecount%>">ĩҳ  </a>
<select name="pagelist" onChange="MM_jumpMenu('self',this,0)">                           
   <% for i=1 to rs.pagecount %>
   <option VALUE="?page=<%=i%>" <% if cint(page)=i then%>selected="selected"<%end if%>>��<%=i%>ҳ</option>
   <%next%>
</select>
<%	
	rs.close
	set rs=nothing
	conn.close
	set conn=nothing
%>
</p>
  <p align="center">www.BJXY.cn &copy; 2009 All Rights Reserved. <br>
   �������ߣ���025��58699601 58699602 58699603<br>
ҳ������������ѧԺ <a href="login.asp" target="_blank">�������</a></p>
</body>
