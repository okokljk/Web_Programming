<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파리미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
		request.setCharacterEncoding("utf-8");
		
		Enumeration paramNames=request.getParameterNames();
		while(paramNames.hasMoreElements())
		{
			String name=(String)paramNames.nextElement();
			out.println("<tr><td>" + name +"</td>\n" );
			String paramValue=request.getParameter(name);
			out.println("<td>" + paramValue +"</td></tr>\n" );
		}
		%>
	</table>
</body>
</html>