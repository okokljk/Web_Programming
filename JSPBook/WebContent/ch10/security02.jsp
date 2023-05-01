<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>사용자 이름: <%= request.getRemoteUser() %>
	<p> 인증방법 <%= request.getAuthType() %>
	<p> 인증한 사용자명이 역할명 "tomcat" 에 속하는 사용자 인가요? <%=request.isUserInRole("tomcat") %>
	<p> 인증한 사용자명이 역할명 "role1" 에 속하는 사용자 인가요? <%=request.isUserInRole("role1") %>
</body>
</html>