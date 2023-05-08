<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>세션 삭제하기 전</h4>
<%
	String user_id=(String)session.getAttribute("userID");
	String user_pw=(String)session.getAttribute("userPW");
	out.println("설정된 세션의 속성 값 :"+user_id+"<br>");
	out.println("설정된 세션의 속성 값 :"+user_pw+"<br>"); 
	
	session.removeAttribute("userID");
%>
<h4>세션 삭제한 후</h4>
<%
	user_id=(String)session.getAttribute("userID");
	user_pw=(String)session.getAttribute("userPW");
	out.println("설정된 세션의 속성 값 :"+user_id+"<br>");
	out.println("설정된 세션의 속성 값 :"+user_pw+"<br>"); 

%>
</body>
</html>