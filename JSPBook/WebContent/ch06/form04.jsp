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
<p>���̵� : <input type="text" name="id"> <input type="button" value="���̵� �ߺ� �˻�">
<p>��й�ȣ : <input type="password" name="passwd">
<p>�̸� : <input type="text" name="name">
<p>����ó : <select name="phone1">
		  	<option value="010">010</option>
		  	<option value="011">011</option>
		  	<option value="016">016</option>
		  	<option value="017">017</option>
		  	<option value="019">019</option>
	      </select>		  	
	    - <input type="text" maxlength="4" size="4" name="phone2"> 
	    - <input type="text" maxlength="4" size="4" name="phone3">
<p>���� : ����<input type="radio" name="sex" value="����" checked> ����<input type="radio" name="sex" value="����">
<p>��� : ����<input type="checkbox" name="hobby1" checked>
		 �<input type="checkbox" name="hobby2">
		 ��ȭ<input type="checkbox" name="hobby3">
<p><textarea cols="30" rows="3" name="comment" placeholder="���� �λ縦 �����ּ���">
		</textarea>
<p><input type="submit" value="�����ϱ�">
   <input type="reset" value="�ٽþ���">
</form>
</body>
</html>