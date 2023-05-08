<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String name;
	String value;
	
	Enumeration en=session.getAttributeNames();
	int i=0;
	
	while(en.hasMoreElements())
	{
		i++;
		name=en.nextElement().toString();
		value=session.getAttribute(name).toString();
		
		out.println("설정된 세션의 속성 값 :"+name+"<br>");
		out.println("설정된 세션의 속성 값 :"+value); 
	}
%>
</body>
</html>