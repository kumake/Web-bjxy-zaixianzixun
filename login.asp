<head>
<title>
����ѧԺ2010��߿�����������ѯ
</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script>
	function checkForm(){
		if (loginForm.username.value=="") {
			alert("�û�������Ϊ�գ�");
			return false;
		}
		if (loginForm.password.value==""){
			alert("���벻��Ϊ�գ�");
			return false;
		}
		return true;
	}
</script>
</head>
<body background=diwen.gif>
<form action="checklogin.asp" method="post" name="loginForm" onsubmit="return checkForm();">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="500" border="0" align="center" cellpadding="5" cellspacing="1" bordercolor="#00FF66">
  <tr>
    <td bordercolor="#00FF33">&nbsp;</td>
    <td bordercolor="#00FF33">��̨�û���½</td>
  </tr>
  <tr>
    <td bordercolor="#00FF33">�û�����</td>
    <td bordercolor="#00FF33"><input type="text" name="username" /></td>
  </tr>
  <tr>
    <td bordercolor="#00FF33">��&nbsp; �룺</td>
    <td bordercolor="#00FF33"><input type="password" name="password" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="��¼" />
      <input type="reset" name="Submit2" value="����" /></td>
  </tr>
</table>

</form>
</body>
