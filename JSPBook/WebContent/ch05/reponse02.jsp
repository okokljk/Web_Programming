<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
이 페이지는 5초마다 새로고침 됩니다
<%
	response.setIntHeader("Refresh",5);
%>
<p><%=(new java.util.Date()).toLocaleString() %>
</body>
</html>