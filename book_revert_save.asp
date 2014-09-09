<%
	dim id

	id=trim(request("id"))
	if not isnumeric(id) then
	response.write "<script>alert('非法操作!');history.back();</script>"
	response.end
	end if

	if Instr(id,"-")>0 then
	response.write "<script>alert('非法操作!');history.back();</script>"
	response.end
	end if 

dim page_num
	
	page_num=trim(request("page"))
	if  page_num="" then        
	   page_num=1  
 	   end if
	if not isnumeric(page_num) then
	response.write "<script>alert('非法操作!');history.back();</script>"
	response.end

	if  page_num<1 then        
	   page_num=1  
 	   end if


	end if

%>


<!--#include file="conn.asp"-->
<%
	dim sql

	dim revert

 
	revert=request("revert")
	sql="update book set revert='"& revert &"' where id="& id
	conn.execute sql
	conn.close
	set conn = nothing
	response.Write("<script>alert('回复成功！');location='book_list.asp?page="&page_num&"';</script>")
%>