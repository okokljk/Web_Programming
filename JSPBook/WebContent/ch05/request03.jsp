<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p>클라이언트IP : <%=request.getRemoteAddr() %>
<p>요청 정보 길이 : <%=request.getContentLength() %>
<p>요청 정보 인코딩 : <%=request.getCharacterEncoding() %>
<p>요청 정보 콘텐트 유형 : <%=request.getContentType() %>
<p>요청 정보 프로토콜 : <%=request.getProtocol() %>
<p>요청 정보 전송방식 : <%=request.getMethod() %>
<p>요청  URI : <%=request.getRequestURI() %>
<p>컨텍스트경로 : <%=request.getContextPath() %>
<p>서버이름 : <%=request.getServerName() %>
<p>서버포트 : <%=request.getServerPort() %>
<p>쿼리문 : <%=request.getQueryString() %>
<p>물리경로 : <%=request.getRealPath("/request03.jsp") %>
</body>
</html>