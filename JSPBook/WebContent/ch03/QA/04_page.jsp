<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
 <%@ page import="java.util.Date" %>
 <%@ page import="java.lang.Math" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! Date d=new Date();%>
	���糯¥: <%=d +"\n"%>
	5�� ����: <%=Math.pow(d.getDay(), 2) %>
	<%-- �Ͽ����� 0 --%>
</body>
</html>