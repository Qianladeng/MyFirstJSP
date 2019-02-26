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
			// 设置编码(Post)
			request.setCharacterEncoding("utf-8");
			// 接收表单数据
			String name = request.getParameter("uname");
			int age=Integer.parseInt(request.getParameter("uage"));
			String psw =request.getParameter("upsw");
			// 数组
			String[] hobbies= request.getParameterValues("uhobbies");
		%>
		
		注册成功信息如下: <br/>
		姓名: <%= name %><br/>
		年龄: <%= age %><br/>
		密码: <%= psw %><br/>
		
		爱好: <br/>
		
		<%
			if(hobbies!=null){
				for(String i : hobbies){
					out.print(i+"&nbsp;"); //空格
				}
			}
		%>
		
		
</body>
</html>