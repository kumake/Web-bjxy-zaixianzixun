<head>
<title>
滨江学院2010年高考招生在线咨询
</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script>
	function checkForm(){
		if (loginForm.username.value=="") {
			alert("用户名不能为空！");
			return false;
		}
		if (loginForm.password.value==""){
			alert("密码不能为空！");
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
    <td bordercolor="#00FF33">后台用户登陆</td>
  </tr>
  <tr>
    <td bordercolor="#00FF33">用户名：</td>
    <td bordercolor="#00FF33"><input type="text" name="username" /></td>
  </tr>
  <tr>
    <td bordercolor="#00FF33">密&nbsp; 码：</td>
    <td bordercolor="#00FF33"><input type="password" name="password" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="登录" />
      <input type="reset" name="Submit2" value="重填" /></td>
  </tr>
</table>

</form>
</body>
