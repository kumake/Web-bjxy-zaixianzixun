<% 
'�ж��Ƿ�����ȷ����ť����������ˣ���Ա���֤���Ƿ�������ȷ 
If Request("submit") <> "" Then 
      Dim checkCode 
      checkCode = Trim(request("checkimg")) 
      response.write checkcode
      response.write Session("CheckCode") 
      If cint(checkCode) =Session("CheckCode")   Then 
             Response.Write "��ȷ"
      Else 
             Response.Write "����"
      End If 
End If 
%> 
<form action="" method="post"> 
��֤�룺<input name='checkimg' type='text' class='input' id='checkimg' style='width: 50px;' maxlength='6' />
<a href='javascript:refreshimg()' title='�������������ͼƬ'><img src="code.asp" border="0"></a><span class="FontRed">* </span><a href='javascript:refreshimg()' title='�������������ͼƬ'><font color='blue'>�������������ͼƬ</font></a>
<input type="submit" name="submit" value="ȷ��">
</form> 


