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
		request.setCharacterEncoding("utf-8"); // post
		String name = request.getParameter("uname");
		String psw = request.getParameter("upsw");
		// 将用户名加入到Cookie中
		Cookie cookie=new Cookie("name",name);
		response.addCookie(cookie);
		response.sendRedirect("result.jsp");		
	%>
</body>
</html>