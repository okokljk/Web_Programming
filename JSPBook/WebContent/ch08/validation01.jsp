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
		alert("���̵� :"+document.loginForm.id.value+"\n"+" ��й�ȣ :"+document.loginForm.passwd.value);
	}
</script>
<body>
	<form name="loginForm">
		���̵� : <input type="text" name="id">
		��й�ȣ: <input type="password" name="passwd">
		<input type="submit" value="����" onclick="Checkform()">
	</form>
</body>
</html>