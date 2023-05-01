<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	
	Current Time : <%= java.util.Calendar.getInstance().getTime() %>
	<%--Calendar는 추상클래스기 때문에   Calendar.getInstance() 를 이용해야한다.
		 .getTime()은 현재시간을 Date형으로 반환해준다. --%>
</body>
</html>