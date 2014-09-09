<!--#include file="conn.asp"-->
<%
	dim sql
	dim rs
	dim username
	dim password
	username=request("username")
	password=request("password")
	sql="select * from admin where username='"& username &"'"
	set rs = conn.execute(sql)
	if rs.eof then
		response.Write("<script>alert('用户名密码不正确！');history.back();</script>")
		response.End()
	else
		 if password=rs("password") then
		session("admin")=username
		response.Write("<script>location='book_list.asp';</script>")

		else
		response.Write("<script>alert('用户名密码不正确！');history.back();</script>")
		response.End()

		end if
	end if
	rs.close
	set rs=nothing
	conn.close
	set conn = nothing
%>