<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String session_id=session.getId();
		long last_time=session.getLastAccessedTime();
		long start_time=session.getCreationTime();
		long used_time=(last_time-start_time)/60000;
		
		out.println("���� ���̵� : "+session_id+"<br>");
		out.println("��û ���� �ð� : "+start_time+"<br>");
		out.println("��û ������ �ð� : "+last_time+"<br>");
		out.println("�� ����Ʈ ��� �ð� : "+used_time+"<br>");
	%>
</body>
</html>