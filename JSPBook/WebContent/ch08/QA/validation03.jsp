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
				alert("���̵� �Է����ּ���.");
				form.id.select();
				return false;
			}
		else if(regExp.test(passwd))
			{
				alert("���� ���� Ư����ȣ 8�ڸ� �����Ͽ� �ۼ����ּ���");
				form.password.select();
				return false;
			}
		else if(passwd!=form.passwordCheck.value)
			{
				alert("��й�ȣ�� �ٸ��ϴ�");
				form.passwordCheck.select();
				return false;
			}
			
		form.submit();
	}
</script>
<body>
<form name="form" method="post">
	���̵�:<input type="text" name="id">
	<p>��й�ȣ:<input type="password" name="password">
	<p>��й�ȣ Ȯ��:<input type="password" name="passwordCheck">
	<p><input type="submit" value="����" onclick="check()">
</form>
</body>
</html>