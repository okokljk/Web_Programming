<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���ϰ� �޾Ƽ� ���</title>
</head>
<body>
	<%
		BufferedReader reader=null;
		try
		{
			String filePath=application.getRealPath("/WEB-INF/computer.txt");
			reader =new BufferedReader(new FileReader(filePath));
			while(true)
			{
				String str=reader.readLine();
				if(str==null)
					break;
				out.println(str+"<br>");
			}
		}catch(FileNotFoundException ae)
		{
			out.println("������ �������� ����");
		}
		catch(IOException ae)
		{
			out.println("������ ������ ����");
		}
		finally
		{
			try
			{
				reader.close();
			}
			catch(Exception e)
			{
				
			}
		}
	%>
</body>
</html>