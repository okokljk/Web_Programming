<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>세션 유호시간 변경 전</h4>
<%
	int time=session.getMaxInactiveInterval()/60;
	out.println("세션 유효 시간 :"+time+"분<br>");
%>
<h4>세션 유호시간 변경 후</h4>
<%
	session.setMaxInactiveInterval(60*60);
	out.println("세션 유효 시간 :"+time+"분<br>");
%>
</body>
</html>