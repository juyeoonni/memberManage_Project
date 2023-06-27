<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.daodto.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 완료</title>
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
	}

	.container a:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>회원정보 수정 완료</h2>
		<% 
		MemberDAO memberDAO = new MemberDAO();

		String id = (String)session.getAttribute("id");
		out.println(id);
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");

		MemberDTO memberDTO = new MemberDTO(name, id, pw, phone, email);
		memberDAO.memberUpdate(memberDTO);
		out.println(memberDAO.memberSelect(id).getName() + "님의 정보가 수정되었습니다.");
		%>
		<br><br>
		<a href="main.jsp">메인화면 돌아가기</a>
	</div>
</body>
</html>
