<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
 <%@ page import="java.util.*,java.io.*,org.apache.commons.fileupload.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String fileUploadPath =	"C:\\Users\\LEE\\Documents\\수업자료\\전공\\2-2\\웹프로그래밍\\실습\\JSPBook\\WebContent\\ch07\\upload";
	DiskFileUpload upload=new DiskFileUpload();
	List items=upload.parseRequest(request);
	Iterator params=items.iterator();
	
	while(params.hasNext())
	{
		FileItem fileitem =(FileItem)params.next();
		if(!fileitem.isFormField())
		{
			String fileName=fileitem.getName();
			fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
			File file=new File(fileUploadPath+"/"+fileName);
			fileitem.write(file);
		}
	}
%>
</body>
</html>