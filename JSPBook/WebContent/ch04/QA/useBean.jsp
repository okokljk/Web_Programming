<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>구구단 출력하기</h4>
<jsp:useBean id="p" class="ch04.com.dao.GuGuDan"/>
<%
	for(int i=1;i<10;i++)
	{
		out.println("5 * "+i+" = "+p.process()+"<br>");
	}
%>
</body>
</html>