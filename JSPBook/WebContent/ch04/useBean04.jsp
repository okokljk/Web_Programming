<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
<%="아이디: "+person.getId()+"<br>" %>
<%="Name : "+person.getName()+"<br>" %>

<%
	person.setId(2019081052);
	person.setName("이정교");
%>
<jsp:include page="useBean03.jsp"/>
</body>
</html>