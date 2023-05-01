<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<%! String head="도서 웹 쇼핑몰입니다";%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
			<%=head %>	
			</h1>
		</div>
	</div>
	
<%@include file="footer.jsp" %>
	
</body>
</html>