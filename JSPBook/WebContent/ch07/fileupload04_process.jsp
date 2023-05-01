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
	String path =	"C:\\Users\\LEE\\Documents\\수업자료\\전공\\2-2\\웹프로그래밍\\실습\\JSPBook\\WebContent\\ch07\\upload";
	DiskFileUpload upload=new DiskFileUpload();
	
	upload.setSizeMax(1000000);
	upload.setSizeThreshold(4096);
	upload.setRepositoryPath(path);
	
	List items=upload.parseRequest(request);
	Iterator params=items.iterator();
	
	while(params.hasNext())
	{
		FileItem item =(FileItem)params.next();
		if(item.isFormField())
		{
			String name=item.getFieldName();
			String value=item.getString("utf-8");
			out.println(name+"="+value+"<br>");
		}
		else
		{
			String fileFieldName = item.getFieldName();
			String fileName=item.getName();
			String contentType=item.getContentType();
			
			fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
			long fileSize=item.getSize();
			
			File file=new File(path+"/"+fileName);
			item.write(file);
			
			out.println("----------------------<br>");
			out.println("요청 파라미터 이름 : "+fileFieldName+"<br>");
			out.println(" 저장 파일 이름 : "+fileName+"<br>");
			out.println("파일 콘텐츠 이름 : "+contentType+"<br>");
			out.println("파일 크기 : "+fileSize+"<br>");
		}
	
	}
%>
</body>
</html>