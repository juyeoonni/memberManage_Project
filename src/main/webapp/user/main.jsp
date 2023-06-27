<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.daodto.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  text-align: center;
  padding-top: 50px;
}

h2 {
  color: #333333;
}

.container {
  width: 300px;
  margin: 0 auto;
  background-color: #ffffff;
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.container a {
  display: inline-block;
  padding: 10px 20px;
  text-decoration: none;
  font-size: 16px;
  border-radius: 5px;
  border: none;
  background-color: #3498db;
  color: white;
  transition: background-color 0.3s ease;
  margin-bottom: 10px;
}

.container a:hover {
  background-color: #45a049;
}
</style>
</head>
<body>
  <div class="container">
    <h2>회원 정보</h2>
    <hr>
    <h3>
    <%
    String id = (String)session.getAttribute("id");
	out.println(id);
	
	String pw = (String)session.getAttribute("pw");
    
    MemberDAO memberDAO = new MemberDAO();
    out.println(memberDAO.memberSelect(id).getName() + " 회원님, 환영합니다!"); 
    %>
    </h3>
    <br>
    <a href="modify.jsp">회원정보 수정</a> <br>
    <a href="logout.jsp">로그아웃</a> <br>
    <a href="withdraw.jsp">회원탈퇴</a> <br>
  </div>
</body>
</html>
