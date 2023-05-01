<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function Checkform()
	{
		alert("아이디 :"+document.loginForm.id.value+"\n"+" 비밀번호 :"+document.loginForm.passwd.value);
	}
</script>
<body>
	<form name="loginForm">
		아이디 : <input type="text" name="id">
		비밀번호: <input type="password" name="passwd">
		<input type="submit" value="전송" onclick="Checkform()">
	</form>
</body>
</html>