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
		request.setCharacterEncoding("EUC-KR");
		String name=request.getParameter("name");
	%>
	<p>
	name : <%=name %><br>
	요청 정보 길이 : <%=request.getContentLength() %><br>
	클라이언트 전송 방식 : <%=request.getMethod() %><br>
	요청 URI : <%=request.getRequestURI() %><br>
	서버 이름 : <%=request.getServerName() %><br>
	서버 포트 : <%=request.getServerPort() %>
</body>
</html>