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
String deptno = request.getParameter("deptno");
String dname = request.getParameter("dname");
String loc = request.getParameter("loc");
String URL = "jdbc:mysql://localhost:3309/spring5fs";
String sql = "insert into dept(deptno,dname,loc) values (" + deptno + ", ' " + dname + "', ' "+ loc + "')";
Class.forName("com.mysql.cj.jdbc.Driver");
out.println("드라이버 로딩~<br>");
try(Connection conn = DriverManager.getConnection(URL,"root","1234");)
{out.println("mysql 접속 성공~");}catch(Exception e){
   e.printStackTrace();
}
%>
</body>
</html>