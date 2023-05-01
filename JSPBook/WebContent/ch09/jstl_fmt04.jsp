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
<jsp:useBean id="now" class="java.util.Date"/>
<p>한국 : <fmt:formatDate value="${now }"/>
<p><fmt:timeZone value="America/New_York"> 뉴욕: <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></fmt:timeZone>
<p><fmt:timeZone value="Europe/London"> 런던: <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></fmt:timeZone>
</body>
</html>