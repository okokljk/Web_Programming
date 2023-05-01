<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, java.io.*, com.oreilly.servlet.*, com.oreilly.servlet.MultipartRequest" %>    
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
	Enumeration file=multi.getFileNames();
	while(file.hasMoreElements())
	{
		String a=(String)file.nextElement();
		File files=multi.getFile(a);
		out.println("요청파라미터 이름"+a+"<br>");
		out.println("실제파일  이름"+multi.getFilesystemName(a)+"<br>");
		out.println("저장 파일  이름"+multi.getOriginalFileName(a)+"<br>");
		out.println("파일 콘텐츠 유형 "+multi.getContentType(a)+"<br>");
		out.println("파일 크기"+files.length());
	}
%>
</body>
</html>