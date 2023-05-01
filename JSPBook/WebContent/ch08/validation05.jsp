<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
 function Checkmember()
 {
	 var regExpId=/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	 var regExpName=/^[가-힣]*$/;
	 var regExpPasswd=/^[0-9]*$/;
	 var regExpPhone=/^\d{3}-\d{3,4}-\d{4}$/;
	 var regExpEmail=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	 
	 var form=document.member;
	 
	 var id=form.id.value;
	 var name=form.name.value;
	 var passwd=form.passwd.value;
	 var phone=form.phone1.value+"-"+form.phone2.value+"-"+form.phone3.value;
	 var email=form.email.value;
	 
	 if(!regExpId.test(id))
		 {
		 	alert("아이디는 문자로 해주세요");
		 	form.id.select();
		 	return;
		 }
	 if(!regExpName.test(name))
	 {
	 	alert("이름은 한글로 해주세요");
	 	form.name.select();
	 	return;
	 }
	 if(!regExpPasswd.test(passwd))
	 {
	 	alert("비밀번호는 숫자로 해주세요");
	 	form.passwd.select();
	 	return;
	 }
	 if(!regExpPhone.test(phone))
	 {
	 	alert("연락처입력을 확인 해주세요");
	 	return;
	 }
	 if(!regExpEmail.test(email))
	 {
	 	alert("이메일 입력을 확인 해주세요");
	 	return;
	 }
	 form.submit();
 }
 
 
</script>
<body>
<form name="member" action="validation05_process.jsp" method="post">
<p>아이디 :<input type="text" name="id">
<p>비밀번호 :<input type="password" name="passwd">
<p>이름 : <input type="text" name="name">
<p>연락처 : <select name="phone1">
<option value="010">010</option>
<option value="011">011</option>
<option value="012">012</option>
<option value="013">013</option>
<option value="014">014</option>
		</select>-<input type="text" maxlength="4" size="4" name="phone2">
		-<input type="text" maxlength="4" size="4" name="phone3">
<p>이메일 :<input type="text" name="email">
<p><input type="submit" value="전송" onclick="return Checkmember()">
</form>
</body>
</html>