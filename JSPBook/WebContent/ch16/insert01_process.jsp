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
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	String name=request.getParameter("name");
	
	Statement stmt=null;
	
	try
	{
		String sql="insert into member(id,passwd,name) values ('"+id+"','"+passwd+"','"+name+"')";
		stmt=conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("member 삽입 성공");
	}catch(SQLException e)
	{
		out.println("실패<br>");
		out.println(e.getMessage());
	}
	finally
	{
		if(stmt!=null)
			stmt.close();
		if(conn!=null)
			conn.close();
	}
%>
</body>
</html>