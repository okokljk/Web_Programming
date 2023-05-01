<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
 <%@ page import="java.util.Date" %>
 <%@ page import="java.lang.Math" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! Date d=new Date();%>
	현재날짜: <%=d +"\n"%>
	5의 제곱: <%=Math.pow(d.getDay(), 2) %>
	<%-- 일요일은 0 --%>
</body>
</html>