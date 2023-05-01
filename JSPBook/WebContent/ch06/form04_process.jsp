<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");
	  String id=request.getParameter("id");
	  String password=request.getParameter("passwd");
	  String name=request.getParameter("name");
	  String phone1=request.getParameter("phone1");
	  String phone2=request.getParameter("phone2");
	  String phone3=request.getParameter("phone3");
	  String sex=request.getParameter("sex");
	  String hobby1=request.getParameter("hobby1");
	  String hobby2=request.getParameter("hobby2");
	  String hobby3=request.getParameter("hobby3");
	  String comment=request.getParameter("comment");
	%>
	<p> 아이디 : <%=id %>
	<p> 비밀번호 : <%=password %> 
	<p> 이름 : <%=name %> 
	<p> 연락처 : <%=phone1 %>-<%=phone2 %>-<%=phone3 %> 
	<p> 성별 : <%=sex %> 
	<p> 취미 : <%=hobby1 %> <%=hobby2 %> <%=hobby3 %> 
	<p> 가입인사 : <%=comment %> 
</body>
</html>