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



<%
	dim sql
	dim tname,title,content,yzm


	yzm=trim(request("yzm"))
	if (not isnumeric(yzm)) or (len(yzm)<>4) then
	response.write "<script>alert('��֤�����Ϊ4λ����!');history.back();</script>"
	response.end
	end if	

	if Instr(yzm,"-")>0 then
	response.write "<script>alert('�Ƿ�����!');history.back();</script>"
	response.end
	end if

	if cint(yzm)<>Session("CheckCode") then
	response.write "<script>alert('��֤�����!');window.location.replace('book.asp');</script>"
	response.end
	end if


	tname=request("name")
	title=request("title")
	content=request("content")

	if len(tname)>18 then
	response.write "<script>alert('�ǳƳ��ȱ���С��18!');history.back();</script>"
	response.end
	end if
	if len(title)>30 then
	response.write "<script>alert('���ⳤ�ȱ���С��30!');history.back();</script>"
	response.end
	end if
	if len(content)>300 then
	response.write "<script>alert('���ݳ��ȱ���С��300!');history.back();</script>"
	response.end
	end if
%>

<!--#include file="conn.asp"-->

<%
	application(ip)=now()

	sql="insert into book (name,title,content,ip) values('"& tname &"','"& title &"','"& content &"','"& ip &"')"
	'response.Write(sql)
	conn.execute sql
	response.Write("<script>alert('���Գɹ�!');location='book_list.asp';</script>")
	conn.close
	set conn=nothing
%>