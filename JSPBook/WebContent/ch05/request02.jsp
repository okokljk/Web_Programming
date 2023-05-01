<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    <%@page import ="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Enumeration en=request.getHeaderNames();
		while(en.hasMoreElements())
		{
			String headerName = (String)en.nextElement();
			String headerValue=request.getHeader(headerName);
		
	%>
	<%=headerName %> : <%=headerValue %><br>
	<%
		} 
	%>
</body>
</html>