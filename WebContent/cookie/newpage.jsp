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
			//客户端
			Cookie[] cookies=request.getCookies();
			for (Cookie i:cookies){
				out.println(i.getName()+"--"+i.getValue()+"<br/>");
			}
	%>
</body>
</html>