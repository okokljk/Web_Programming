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
	String path =	"C:\\Users\\LEE\\Documents\\�����ڷ�\\����\\2-2\\�����α׷���\\�ǽ�\\JSPBook\\WebContent\\ch07\\upload";
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
			out.println("��û �Ķ���� �̸� : "+fileFieldName+"<br>");
			out.println(" ���� ���� �̸� : "+fileName+"<br>");
			out.println("���� ������ �̸� : "+contentType+"<br>");
			out.println("���� ũ�� : "+fileSize+"<br>");
		}
	
	}
%>
</body>
</html>