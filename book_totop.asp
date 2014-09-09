<!--#include file="conn.asp"-->
<%
	dim sql
	dim id
	dim rs
	
	id= request("id")
	sql="select * from book where id="& id
	set rs=conn.execute (sql)
	if not rs.eof then
		
		if rs("istop")=0 then 
			sql="update book set istop=1 where id="& id
			conn.execute sql
			response.Write("<script>alert('置顶成功！');location='book_list.asp';</script>")
	
		else
			sql="update book set istop=0 where id="& id
			conn.execute sql
			response.Write("<script>alert('取消置顶成功！');location='book_list.asp';</script>")
			
		end if
	
	end if
	rs.close
	set rs=nothing
	conn.close
	set conn=nothing
	
	
	
%>