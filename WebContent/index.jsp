<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="show.jsp" method="post">   <!-- 默认为Get 容纳信息有限-->
		用户名 ：<input type="text" name ="uname" value="QCY"><br/>   <!-- value是表单默认值 -->
		密码 ： <input type="password" name="upsw"><br/>
		年龄 ： <input type="text" name="uage"><br/>
		爱好 ：<br/> 
		<input type="checkbox" name="uhobbies" value="足球value">足球    <!-- 提交的值是value -->
		<input type="checkbox" name="uhobbies" value="篮球value">篮球
		<input type="checkbox" name="uhobbies" value="乒乓球value">乒乓球<br/>
		<input type="submit"  value="提交">
				
	</form>
	
</body>
</html>