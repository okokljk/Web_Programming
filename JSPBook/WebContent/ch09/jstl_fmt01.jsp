<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fmt:setLocale value="ko"/>
	<p>�⺻������
	<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
	<p> ���� : <fmt:message key="title" bundle="${resourceBundle}"/>
	<p><fmt:message key="username" var="a" bundle="${resourceBundle}"/>
	<p>${a}
	
	
	<p>����������
	<fmt:setLocale value="en"/>
	<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
	<p> ���� : <fmt:message key="title" bundle="${resourceBundle}"/>
	<p> �̸� : <fmt:message key="username" bundle="${resourceBundle}"/>
	
</body>
</html>