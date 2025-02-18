<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String URL = "jdbc:mysql://localhost:3309/spring5fs";
String sql = "select * from dept";
Class.forName("com.mysql.cj.jdbc.Driver");
out.println("드라이버 로딩~<br>");
try(Connection conn = DriverManager.getConnection(URL,"root","1234");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);)
	{
	while(rs.next()){
		out.println(rs.getString(1));
	}
}catch(Exception e){ e.printStackTrace(); }
%>
</body>
</html>