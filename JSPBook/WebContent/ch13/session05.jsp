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
<h4>���� �����ϱ� ��</h4>
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
		
		out.println("������ ������ �Ӽ� �� :"+name+"<br>");
		out.println("������ ������ �Ӽ� �� :"+value+"<br>"); 
	}
	session.removeAttribute("userID");
%>
<h4>���� ������ ��</h4>
<%
	 en=session.getAttributeNames();
	 i=0;
	
	while(en.hasMoreElements())
	{
		i++;
		name=en.nextElement().toString();
		value=session.getAttribute(name).toString();
		
		out.println("������ ������ �Ӽ� �� :"+name+"<br>");
		out.println("������ ������ �Ӽ� �� :"+value+"<br>"); 
	}
%>
</body>
</html>