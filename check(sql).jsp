<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String URL="jdbc:mysql://localhost:3306/test1?useSSL=false";
			String USERNAME="root";
			String PSW="password";
			conn = DriverManager.getConnection(URL,USERNAME,PSW);
	
	//		String sql = "insert into a (A,B) values ( ? , ? )"; // 占位符 防止sql注入
	//		ps = conn.prepareStatement(sql);
	//		ps.setInt(1, 5); // 参数索引从1开始，不是0;
	//		ps.setString(2, "a");
	//		ps.execute();
			
			//检测账号密码
			String name=request.getParameter("uname");
			String psw=request.getParameter("upsw");
			// 读取数据 ResultSet
			String sql = "select * from xuesheng where name= '"+name+"' and psw= '"+psw+"' ";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()){
				out.println("登陆成功");
			}else{
				out.print("账号或者密码错误");
			}
			//所有数据
			sql = "select * from table ";
			String a, b;
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			out.println("<br/><br/><br/>"+"所有用户"+"<br/>");
			while (rs.next()) {
				a = rs.getObject(2).toString();
				b = rs.getObject(3).toString();
				out.print("账号 : "+a + "\t");
				out.print("密码 : "+b+"<br/>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
	%>
</body>
</html>