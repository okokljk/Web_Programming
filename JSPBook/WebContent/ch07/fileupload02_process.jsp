<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, java.io.*, com.oreilly.servlet.*,com.oreilly.servlet.multipart.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	MultipartRequest multi=new MultipartRequest(request,
			"C:\\Users\\LEE\\Documents\\수업자료\\전공\\2-2\\웹프로그래밍\\실습\\JSPBook\\WebContent\\ch07\\upload"
			,5*1024*1024,"utf-8",new DefaultFileRenamePolicy());

	String name1=multi.getParameter("name1");
	String subject1=multi.getParameter("subject1");
	
	String name2=multi.getParameter("name2");
	String subject2=multi.getParameter("subject2");
	
	String name3=multi.getParameter("name3");
	String subject3=multi.getParameter("subject3");
	
	Enumeration files=multi.getFileNames();
	
	String file=(String)files.nextElement();
	String filename1=multi.getFilesystemName(file);
	
	String file2=(String)files.nextElement();
	String filename2=multi.getFilesystemName(file2);
	
	String file3=(String)files.nextElement();
	String filename3=multi.getFilesystemName(file3);
%>
<table border="1">
<tr>
	<tr width="100">이름</tr>
	<tr width="100">제목</tr>
	<tr width="100">파일</tr>
</tr>
<%
	out.println("<tr><td> "+name1+" </td>");
	out.println("<td> "+subject1+" </td>");
	out.println("<td> "+filename1+"</td></tr>\n");
	
	out.println("<tr><td> "+name2+" </td>");
	out.println("<td> "+subject2+" </td>");
	out.println("<td> "+filename2+"</td></tr>\n");
	
	out.println("<tr><td> "+name3+" </td>");
	out.println("<td> "+subject3+" </td>");
	out.println("<td> "+filename3+"</td></tr>\n");
%>	
</table>
</body>
</html>