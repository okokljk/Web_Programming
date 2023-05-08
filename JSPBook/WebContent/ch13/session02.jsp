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
		String user_id=(String)session.getAttribute("user_ID");
		String user_pw=(String)session.getAttribute("userPW");
		
		out.println("설정된 세션의 속성 값 :"+user_id+"<br>");
		out.println("설정된 세션의 속성 값 :"+user_pw); 
	%>
</body>
</html>