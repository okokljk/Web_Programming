<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %> 
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
			도서 목록
			</h1>
		</div>
	</div>
	
	<%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	
	<div class="container">
		<div class="colunm" align="left">
			<%
				for(int i=0; i<listOfBooks.size(); i++)
				{
					Book book=listOfBooks.get(i);
			%>
			<div class="col-md-12">
				<img src="C:\upload\\<%=book.getFilename()%>"style="width:100%">
				<h3><%="["+book.getCategory()+"]  "%><%=book.getName() %></h3>
				<p><%=book.getDescription() %></p>
				<p><a href="./book.jsp?id=<%=book.getBookId()%>"
			    class="btn btn-secondary" role="button">상제정보 &raquo;></a>
				<p><%=book.getAuthor()+" "%>|<%=" "+book.getPublisher()+" "%>|<%=" "+book.getUnitPrice() %></p>
				<hr>
			</div>
			<%
				}
			%>
			
			
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</html>