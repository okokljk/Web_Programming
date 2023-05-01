<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="Write_process.jsp" method="post">
		이름:<input type="text" name="name">
		제목:<input type="text" name="title">
		<textarea rows="5" cols="30" name="content"></textarea><br>
		<input type="submit" value="저장">
	</form>
</body>
</html>