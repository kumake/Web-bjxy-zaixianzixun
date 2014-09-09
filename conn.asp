
<%
dim conn
dim connstr,datafile
datafile="date_book.asp"
on error resume next
connstr="DBQ="+server.mappath(datafile)+";DefaultDir=;DRIVER={Microsoft Access Driver (*.mdb)};"
set conn=server.createobject("ADODB.CONNECTION")
conn.open connstr

%>



