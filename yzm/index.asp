<% 
'判断是否按下了确定按钮，如果按下了，则对比验证码是否输入正确 
If Request("submit") <> "" Then 
      Dim checkCode 
      checkCode = Trim(request("checkimg")) 
      response.write checkcode
      response.write Session("CheckCode") 
      If cint(checkCode) =Session("CheckCode")   Then 
             Response.Write "正确"
      Else 
             Response.Write "错误"
      End If 
End If 
%> 
<form action="" method="post"> 
验证码：<input name='checkimg' type='text' class='input' id='checkimg' style='width: 50px;' maxlength='6' />
<a href='javascript:refreshimg()' title='看不清楚，换个图片'><img src="code.asp" border="0"></a><span class="FontRed">* </span><a href='javascript:refreshimg()' title='看不清楚，换个图片'><font color='blue'>看不清楚，换个图片</font></a>
<input type="submit" name="submit" value="确定">
</form> 


