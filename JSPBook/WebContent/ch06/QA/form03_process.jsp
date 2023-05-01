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
<h3>선택한 과일</h3>
<%
	request.setCharacterEncoding("utf-8");
	String fruit[]=request.getParameterValues("fruit");
	if(fruit!=null)
	{
		for(int i=0;i<fruit.length;i++)
			out.println(fruit[i]+" ");
	}
%>
</body>
</html>