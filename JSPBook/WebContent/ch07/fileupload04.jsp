<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="fileupload04_process.jsp" method="post" 
	enctype="multipart/form-data" name="fileForm">
		<p>�̸� : <input type="text" name="name">
		<p>���� : <input type="text" name="subject">
		<p>���� : <input type="file" name="filename">
		<p><input type="submit" value="submit">
	
	</form>
</body>
</html>