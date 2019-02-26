<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 全部注销
		session.invalidate();
		// 单个信息 session.removeAttribute("uname");
		// 返回初始页面
		response.sendRedirect("login.jsp");
		
	%>
	
</body>
</html>