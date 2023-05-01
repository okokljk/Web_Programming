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
<p> 아이디 : <%=request.getParameter("id") %>
<p> 비밀번호 : <%=request.getParameter("passwd") %>
<p> 이름 : <%=request.getParameter("name") %>
<p> 연락처 :<%=request.getParameter("phone1") %>-<%=request.getParameter("phone2") %>-<%=request.getParameter("phone3") %>
<p> 이메일 :<%=request.getParameter("email") %>
</body>
</html>