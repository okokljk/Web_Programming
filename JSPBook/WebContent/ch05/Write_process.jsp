<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		PrintWriter writer=null;
		try{
			String filePath=application.getRealPath("/WEB-INF/computer.txt");
			writer=new PrintWriter(filePath);
			writer.printf("���� : %s %n",title);
			writer.printf("�۾���: %s %n",name);
			writer.println(content);
			out.println("�����");
		}catch(IOException i)
		{
			out.println("���Ͽ� �����͸� �� �� ����");
		}
		finally
		{
			try{
				writer.close();
			}
			catch(Exception e)
			{
				
			}
		}
	%>
</body>
</html>