<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String num1=request.getParameter("num1");
	String num2=request.getParameter("num2");
	
	int a=Integer.parseInt(num1);
	int b=Integer.parseInt(num2);
	
	out.println(a+" / "+b+" = "+a/b);
	%>
</body>
</html>