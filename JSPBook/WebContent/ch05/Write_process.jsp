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
			writer.printf("제목 : %s %n",title);
			writer.printf("글쓴이: %s %n",name);
			writer.println(content);
			out.println("저장됨");
		}catch(IOException i)
		{
			out.println("파일에 데이터를 쓸 수 없음");
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