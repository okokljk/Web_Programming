<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

현재시간 : <%=java.util.Calendar.getInstance().getTime()%>
<%
	response.setHeader("Refresh","5");
%>
<p><a href="response_data.jsp">구글 홈페이지로 이동</a>
</body>
</html>