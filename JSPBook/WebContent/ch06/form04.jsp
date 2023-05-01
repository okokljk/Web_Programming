<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="form04_process.jsp" name="member" method="post">
<p>아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복 검사">
<p>비밀번호 : <input type="password" name="passwd">
<p>이름 : <input type="text" name="name">
<p>연락처 : <select name="phone1">
		  	<option value="010">010</option>
		  	<option value="011">011</option>
		  	<option value="016">016</option>
		  	<option value="017">017</option>
		  	<option value="019">019</option>
	      </select>		  	
	    - <input type="text" maxlength="4" size="4" name="phone2"> 
	    - <input type="text" maxlength="4" size="4" name="phone3">
<p>성별 : 남성<input type="radio" name="sex" value="남성" checked> 여성<input type="radio" name="sex" value="여성">
<p>취미 : 독서<input type="checkbox" name="hobby1" checked>
		 운동<input type="checkbox" name="hobby2">
		 영화<input type="checkbox" name="hobby3">
<p><textarea cols="30" rows="3" name="comment" placeholder="가입 인사를 적어주세요">
		</textarea>
<p><input type="submit" value="가입하기">
   <input type="reset" value="다시쓰기">
</form>
</body>
</html>