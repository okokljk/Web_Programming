<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function Checklogin()
	{
		var form=document.loginForm;
		
		if(form.id.value.length<4||form.id.value.length>12)
			{
				alert("아이디는 4~12자 이내로 입력 가능합니다");
				form.id.select();
				return;
			}
		
		if(form.passwd.value.length<4)
			{
				alert("비밀번호는 4자 이상 이어야 합니다");
				form.passwd.select();
				return;
			}
		form.submit();
	}
</script>
<body>
<form name="loginForm" action="validation03_process.jsp" method="post">
	아이디 : <input type="text" name="id">
	비밀번호 : <input type="password" name="passwd">
	<input type="submit" value="전송" onclick="Checklogin()"> 
</form>
</body>
</html>