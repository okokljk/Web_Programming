<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>param �׼� ��ũ</h3>
<jsp:include page="param02_data.jsp" flush="flase">
	<jsp:param name="title"	value='<%=java.net.URLEncoder.encode("������ ��¥�� �ð�") %>'/>
	<jsp:param name="date" value="<%=java.util.Calendar.getInstance().getTime() %>"/>
</jsp:include>
<p>jsp server
</body>
</html>