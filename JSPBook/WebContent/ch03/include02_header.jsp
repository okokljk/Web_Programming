<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Dire</title>
</head>
<body>
	<%! int pagecnt=0;
		void addCount()
		{
			pagecnt++;
		}
		%>
		<% addCount(); %>
		<p>
		�� ����Ʈ �湮�� <%=pagecnt %>��° �Դϴ�.
		</p>
</body>
</html>