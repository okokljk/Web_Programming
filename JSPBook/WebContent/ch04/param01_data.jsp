<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>아이디: <%=request.getParameter("id") %>
		<%String name=request.getParameter("r"); %>
	<p>이름 : <%=java.net.URLDecoder.decode(name)%>
</body>
</html>