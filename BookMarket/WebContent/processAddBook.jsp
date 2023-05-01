<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Book, dao.BookRepository" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String filename = "";
	String realFolder = "C:\\upload"; //웹 애플리케이션상의 절대 경로
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기 5MB
	String encType ="utf-8";

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String bookId = multi.getParameter("bookId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String author = multi.getParameter("author");
	String description = multi.getParameter("description");
	String publisher = multi.getParameter("publisher");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String totalPages = multi.getParameter("totalPages");
	String releaseDate = multi.getParameter("releaseDate");
	String condition = multi.getParameter("condition");
	
	Integer price;
	
	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
		
	long stock;
	
	if (unitsInStock.isEmpty())
		stock = 0;
	else 
		stock = Long.valueOf(unitsInStock);
	
	long pages;
	
	if (totalPages.isEmpty())
		pages = 0;
	else
		pages = Long.valueOf(totalPages);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setDescription(description);
	newBook.setPublisher(publisher);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setTotalPages(pages);
	newBook.setReleaseDate(releaseDate);
	newBook.setCondition(condition);
	newBook.setFilename(fileName);
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
%>
</body>
</html>