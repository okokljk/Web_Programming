<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="#" name="member" method="post">
<p>���̵� : <input type="text" name="id"><input type="button" value="���̵� �ߺ� �˻�">
<p>��й�ȣ : <input type="password">
<p>�̸� : <input type="text" name="name">
<p>����ó : <input type="text" maxlength="4" size="4" name="phone1"> - <input type="text" maxlength="4" size="4" name="phone1"> - <input type="text" maxlength="4" size="4" name="phone1">
<p>���� : ����<input type="radio" name="sex" value="����" checked> ����<input type="radio" name="sex" value="����">
<p>��� : ����<input type="checkbox" name="hobby1" checked>
		 �<input type="checkbox" name="hobby2">
		 ��ȭ<input type="checkbox" name="hobby3">
<p><input type="submit" value="�����ϱ�">
   <input type="reset" value="�ٽþ���">
<%String a=application.getRealPath("ch06.jsp");
out.println(a);%>
</form>
</body>
</html>