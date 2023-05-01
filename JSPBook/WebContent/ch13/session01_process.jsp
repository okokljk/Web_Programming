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
		String user_id=request.getParameter("id");
		String user_pw=request.getParameter("passwd");
		
		if(user_id.equals("admin")&&user_pw.equals("1234"))
		{
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			out.print("세션설정 성공");
			out.print(user_id+"님 환영합니다");
			
		}
		else
			out.print("세션설정 실패하였습니다");
	%>
</body>
</html>