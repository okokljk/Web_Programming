<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check()
	{
		var form=document.form;
		var id=form.id.value;
		var passwd=form.password.value;
		var regExp=/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
		
		if(id=="")
			{
				alert("아이디를 입력해주세요.");
				form.id.select();
				return false;
			}
		else if(regExp.test(passwd))
			{
				alert("영문 숫자 특수기호 8자리 포함하여 작성해주세요");
				form.password.select();
				return false;
			}
		else if(passwd!=form.passwordCheck.value)
			{
				alert("비밀번호가 다릅니다");
				form.passwordCheck.select();
				return false;
			}
			
		form.submit();
	}
</script>
<body>
<form name="form" method="post">
	아이디:<input type="text" name="id">
	<p>비밀번호:<input type="password" name="password">
	<p>비밀번호 확인:<input type="password" name="passwordCheck">
	<p><input type="submit" value="전송" onclick="check()">
</form>
</body>
</html>