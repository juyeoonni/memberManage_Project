<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="com.daodto.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>가입 승인 요청</title>
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
		<h2>가입 승인 요청</h2>
		
		<%
	request.setCharacterEncoding("EUC-KR");
	MemberDAO memberDAO = new MemberDAO();
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	MemberDTO memberDTO = new MemberDTO(name, id, pw, phone, email);
	memberDAO.memberInsert(memberDTO);
	out.println(memberDTO.getName() + "님, 회원 가입 승인 요청 되었습니다.");
	%>
		
		<br>
		<a href="../home.jsp">처음으로</a>
	</div>
</body>
</html>
