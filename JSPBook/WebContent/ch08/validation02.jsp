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
		 	alert("���̵� �Է��ϼ���");
		 	form.id.focus();
		 	return false;
		 }
	 else if(form.passwd.value=="")
		 {
		 	alert("��й�ȣ�� �Է��ϼ���");
		 	form.passwd.focus();
		 	return false;
		 }
	 form.submit();
 }
</script>
<body>
<form name="loginForm" action="validation02_process.jsp" method="post">
	���̵� : <input type="text" name="id">
	<p>��й�ȣ : <input type="password" name="passwd">
	<input type="submit" value="����" onclick="checkLogin()">
</form>
</body>
</html>