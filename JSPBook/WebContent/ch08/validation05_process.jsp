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
	request.setCharacterEncoding("utf-8");
%>
<p> ���̵� : <%=request.getParameter("id") %>
<p> ��й�ȣ : <%=request.getParameter("passwd") %>
<p> �̸� : <%=request.getParameter("name") %>
<p> ����ó :<%=request.getParameter("phone1") %>-<%=request.getParameter("phone2") %>-<%=request.getParameter("phone3") %>
<p> �̸��� :<%=request.getParameter("email") %>
</body>
</html>