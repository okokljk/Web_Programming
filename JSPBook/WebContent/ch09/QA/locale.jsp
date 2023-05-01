<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Locale" %>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<h3>현재 로케일</h3>
	<%
		Locale locale = request.getLocale();
	%>
	<p> 언어 : <b><%=locale.getLanguage() %></b>
	<p> 국가 : <b><%=locale.getCountry() %></b>
</body>
</html>