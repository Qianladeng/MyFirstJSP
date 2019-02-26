<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	登陆成功
	
	<%
		String name= request.getParameter("uname"); // 通过check.jsp接收到数据
		out.print("欢迎"+name);
	%>
</body>
</html>