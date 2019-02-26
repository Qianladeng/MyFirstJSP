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
		
		if(name.equals("zs")&& psw.equals("123")){
			//页面跳转1：重定向，地址会变,数据不保留,请求次数2次
			//response.sendRedirect("success.jsp"); 
			
			//页面跳转2：请求转发 ,可以获取到数据，地址栏没有变；请求次数1次
			request.getRequestDispatcher("success.jsp").forward(request,response);
		}else{
			out.println("失败");
		}
	%>
</body>
</html>