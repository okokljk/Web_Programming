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
	<p>이름 1: <input type="text" name="name1">
	     제목 1: <input type="text" name="subject1">
	     파일 1: <input type="file" name="filename1">
	 <p>이름 2: <input type="text" name="name2">
	     제목 2: <input type="text" name="subject2">
	     파일 2: <input type="file" name="filename2">
	  <p>이름 3: <input type="text" name="name3">
	     제목 3: <input type="text" name="subject3">
	     파일 3: <input type="file" name="filename3">
	   <p><input type="submit" value="submit">
	</form>
</body>
</html>