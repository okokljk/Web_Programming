<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies=request.getCookies();
		out.println("���� ������ ��Ű ���� => "+cookies.length+"<br>");
		out.println("====================<br>");
		for(int i=0; i< cookies.length; i++)
		{
			out.println("������ ��Ű�� �Ӽ� �̸� [ "+i+" ]: "+cookies[i].getName()+"<br>");
			out.println("������ ��Ű�� �Ӽ� �̸� [ "+i+" ]: "+cookies[i].getValue()+"<br>");
			out.println("------------------<br>");
		}
	%>
</body>
</html>