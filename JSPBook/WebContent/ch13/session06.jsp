<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>���� �����ϱ� ��</h4>
<%
	String user_id=(String)session.getAttribute("userID");
	String user_pw=(String)session.getAttribute("userPW");
	out.println("������ ������ �Ӽ� �� :"+user_id+"<br>");
	out.println("������ ������ �Ӽ� �� :"+user_pw+"<br>"); 
	
	if(request.isRequestedSessionIdValid()==true)
	{
		out.print("������ ��ȿ");
	}
	else
	{
		out.println("������ ��ȿx");
	}
	session.invalidate();
%>
<h4>���� ������ ��</h4>
<%
if(request.isRequestedSessionIdValid()==true)
{
	out.print("������ ��ȿ");
}
else
{
	out.println("������ ��ȿx");
}

%>
</body>
</html>