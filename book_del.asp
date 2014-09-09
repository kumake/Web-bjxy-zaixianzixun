<%
	dim sql
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
 
	sql="delete from book where id="& id
	conn.execute sql
	response.Write("<script>alert('删除成功！');location='book_list.asp?page="&page_num&"';</script>")
%>