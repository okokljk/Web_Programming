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
				alert("���̵�� 4~12�� �̳��� �Է� �����մϴ�");
				form.id.select();
				return;
			}
		
		if(form.passwd.value.length<4)
			{
				alert("��й�ȣ�� 4�� �̻� �̾�� �մϴ�");
				form.passwd.select();
				return;
			}
		form.submit();
	}
</script>
<body>
<form name="loginForm" action="validation03_process.jsp" method="post">
	���̵� : <input type="text" name="id">
	��й�ȣ : <input type="password" name="passwd">
	<input type="submit" value="����" onclick="Checklogin()"> 
</form>
</body>
</html>