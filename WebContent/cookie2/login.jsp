<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		String uname;
	%>
	<%
		Cookie[] cookie=request.getCookies();
		for(Cookie i : cookie){
			if(i.getName().equals("uname")){
				uname=i.getValue();
			}
		}
	%>
	<form action="check.jsp" method="post">                 <!-- 如果为null则是空值,否则为uname -->
		用户名<input type="text" name="uname" value="<%=(uname==null)?"":uname%>"><br/>
		密码<input type="password" name="upsw"><br/> 
		<input type="submit" value="登录">
	</form>
</body>
</html>