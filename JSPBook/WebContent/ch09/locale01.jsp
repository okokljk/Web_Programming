<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.NumberFormat, java.text.DateFormat, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>현재 로케일의 국가, 날짜, 통화</h3>
	<%
		Locale locale=request.getLocale();
		Date currentDate=new Date();
		DateFormat dateFormat =DateFormat.getDateInstance(DateFormat.FULL,locale);
		NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
	%>
	<p>국가:<%=locale.getDisplayCountry() %>
	<p>날짜:<%=dateFormat.format(currentDate) %>
	<p>숫자(12345.67):<%=numberFormat.format(12345.67) %>
</body>
</html>