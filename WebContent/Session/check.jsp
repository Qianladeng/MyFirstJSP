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
		if(name.equals("zs")&&psw.equals("123")){
			//只有登录成功，session中才会存在
			session.setAttribute("uname", name);
			session.setAttribute("upsw",psw);
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
			
		}else{
			response.sendRedirect("login.jsp");	
		}
		
	%>
</body>
</html>