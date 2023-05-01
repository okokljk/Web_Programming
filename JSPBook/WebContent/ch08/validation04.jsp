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
		
		for(i=0; i<form.id.value.length; i++)
			{
				var ch=form.id.value.charAt(i);
				
				if(!(ch>='a'&&ch<='z'))
					{
					 alert("아이디는 영문 소문자만 가능합니다");
					 form.id.select();
					 return false;
					}
			}
		if(isNaN(form.passwd.value))
			{
			 alert("비밀번호는 숫자만 입력가능합니다");
			 form.passwd.select();
			 return false;
			}
			form.submit();
	}
</script>
<body>
<form name="loginForm" action="validation04_process.jsp" method="post">
 아이디 :<input type="text" name="id">
 비밀번호 : <input type="password" name="passwd">
 <input type="submit" value="전송" onclick="return Checklogin()">
</form>
</body>
</html>