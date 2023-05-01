<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
 function checkLogin()
 {
	 var form= document.loginForm;
	 if(form.id.value=="")
		 {
		 	alert("아이디를 입력하세요");
		 	form.id.focus();
		 	return false;
		 }
	 else if(form.passwd.value=="")
		 {
		 	alert("비밀번호를 입력하세요");
		 	form.passwd.focus();
		 	return false;
		 }
	 form.submit();
 }
</script>
<body>
<form name="loginForm" action="validation02_process.jsp" method="post">
	아이디 : <input type="text" name="id">
	<p>비밀번호 : <input type="password" name="passwd">
	<input type="submit" value="전송" onclick="checkLogin()">
</form>
</body>
</html>