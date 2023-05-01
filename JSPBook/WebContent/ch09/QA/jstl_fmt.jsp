<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>' />
	<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
		<div class="text-left">
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
		</div>
		<p><fmt:message key="id" bundle="${resourceBundle }"/> : <input type="text" name="id"/>
		<p><fmt:message key="password" bundle="${resourceBundle }"/> : <input type="password" name="passwd"/>
		<p><input type="submit" value="<fmt:message key="button" bundle="${resourceBundle }"/>">
		
</body>
</html>