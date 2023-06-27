<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.daodto.*"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		width: 500px;
		margin: 0 auto;
		background-color: #ffffff;
		padding: 30px;
		border-radius: 5px;
		box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	}

	.container a {
		display: inline-block;
		padding: 12px 24px;
		font-size: 18px;
		border: none;
		border-radius: 5px;
		background-color: #3498db;
		color: white;
		text-decoration: none;
		margin-top: 20px;
		transition: background-color 0.3s ease;
	}

	.container a:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="container">
		<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		
		MemberDAO memberDAO = new MemberDAO();
		
		System.out.println(id);	
		MemberDTO memberDTO = new MemberDTO(id, name, pw, email);
		memberDAO.adminUpdate(memberDTO);
		out.println(memberDAO.memberSelect(id).getName() + "님의 정보가 수정되었습니다.");
		%>
	
		<br><br>
		<a href="AdMain.jsp">메인화면 돌아가기</a>
	</div>
</body>
</html>
