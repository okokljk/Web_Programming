<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn=null;
	try
	{
		String url="jdbc:mysql://localhost:3308/JSPBookDB";
		String user="root";
		String password="1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url,user,password);
		out.println("데이터베이스 연결이 성공했습니다");
	}catch(SQLException e)
	{
		out.println("데이터베이스 연결실패"+"<br>");
		out.println(e.getMessage());
		
	}
	finally
	{
		if(conn!=null)
			conn.close();
	}
%>
</body>
</html>