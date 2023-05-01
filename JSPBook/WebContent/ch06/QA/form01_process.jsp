<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String address=request.getParameter("address");
	String email=request.getParameter("email");
	out.println("아이디: "+name+"<br>");
	out.println("주소: "+address+"<br>");
	out.println("이메일: "+email+"<br>");
%>
</body>
</html>