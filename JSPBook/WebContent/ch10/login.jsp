<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="loginForm" action="j_security_check" method="post">
		<p> 사용자명 : <input type="text" name="j_username">
		<p> 비밀번호 : <input type="password" name="j_password">
		<p> <input type="submit" value="전송">
	</form>
	</body>
</html>