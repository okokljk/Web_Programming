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
			"C:\\Users\\LEE\\Documents\\�����ڷ�\\����\\2-2\\�����α׷���\\�ǽ�\\JSPBook\\WebContent\\ch07\\upload"
			,5*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	Enumeration file=multi.getFileNames();
	while(file.hasMoreElements())
	{
		String a=(String)file.nextElement();
		File files=multi.getFile(a);
		out.println("��û�Ķ���� �̸�"+a+"<br>");
		out.println("��������  �̸�"+multi.getFilesystemName(a)+"<br>");
		out.println("���� ����  �̸�"+multi.getOriginalFileName(a)+"<br>");
		out.println("���� ������ ���� "+multi.getContentType(a)+"<br>");
		out.println("���� ũ��"+files.length());
	}
%>
</body>
</html>