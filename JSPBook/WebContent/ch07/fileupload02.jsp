<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="fileupload02_process.jsp" name="fileForm" method="post" enctype="multipart/form-data">
	<p>�̸� 1: <input type="text" name="name1">
	     ���� 1: <input type="text" name="subject1">
	     ���� 1: <input type="file" name="filename1">
	 <p>�̸� 2: <input type="text" name="name2">
	     ���� 2: <input type="text" name="subject2">
	     ���� 2: <input type="file" name="filename2">
	  <p>�̸� 3: <input type="text" name="name3">
	     ���� 3: <input type="text" name="subject3">
	     ���� 3: <input type="file" name="filename3">
	   <p><input type="submit" value="submit">
	</form>
</body>
</html>