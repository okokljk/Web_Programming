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
		String user_pw=request.getParameter("password");
		
		if(user_id.equals("admin")&&user_pw.equals("1234"))
		{
			Cookie cookie_id=new Cookie("userID",user_id);
			Cookie cookie_pw=new Cookie("userPW",user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println("쿠키생성 성공");
			out.println(user_id+"님 환영합니다");
		}
		else
		{
			out.println("쿠키 생성 실패");
		}
			
	%>
</body>
</html>