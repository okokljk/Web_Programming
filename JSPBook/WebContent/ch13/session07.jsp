<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>���� ��ȣ�ð� ���� ��</h4>
<%
	int time=session.getMaxInactiveInterval()/60;
	out.println("���� ��ȿ �ð� :"+time+"��<br>");
%>
<h4>���� ��ȣ�ð� ���� ��</h4>
<%
	session.setMaxInactiveInterval(60*60);
	out.println("���� ��ȿ �ð� :"+time+"��<br>");
%>
</body>
</html>