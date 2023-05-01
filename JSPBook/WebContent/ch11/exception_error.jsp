<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>오류가 발생했습니다.
	<p>예외 : <%= exception %>
	<p> toString() : <%=exception.toString()%>
	<p> getClass().getName(): <%=exception.getClass().getName()%>
	<p> getMessage() : <%=exception.getMessage() %>
</body>
</html>