<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	int arr[]=new int[num];
	Random r=new Random();
	arr[0]=r.nextInt(50)+1;
	for(int i=1; i<arr.length;i++)
	{
		int a=r.nextInt(50)+1;
		for(int j=0; j<i;)
		{
			if(a==arr[j])
				a=r.nextInt(50)+1;
			else
				j++;
		}
		arr[i]=a;
	}
	Arrays.sort(arr);
	for(int i=0; i<arr.length; i++)
		out.println(arr[i]+" ");
%>
</body>
</html>