<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.daodto.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리 페이지</title>

<style>
	body {
		font-family: 'Arial', sans-serif;
		background-color: #f1f1f1;
		margin: 0;
		padding: 0;
	}

	.container {
		width: 800px;
		margin: 50px auto;
		padding: 20px;
		background-color: #fff;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	}

	h1 {
		text-align: center;
		color: #333;
	}

	.welcome-message {
		margin-bottom: 20px;
		text-align: center;
	}

	.navigation {
		margin-bottom: 20px;
	}

	.navigation h3 {
		font-size: 18px;
		margin-bottom: 10px;
		color: #333;
	}

	.navigation a {
		display: block;
		margin-bottom: 5px;
		padding: 10px;
		border: 1px solid #ccc;
		border-radius: 3px;
		text-decoration: none;
		color: #333;
		background-color: #f9f9f9;
		transition: background-color 0.3s;
	}

	.navigation a:hover {
		background-color: #e9e9e9;
	}

	.logout-link {
		margin-top: 20px;
		text-align: center;
	}

	.logout-link a {
		color: #f00;
		font-weight: bold;
		text-decoration: none;
	}
</style>

</head>
<body>
	<div class="container">
		<h1>관리 페이지</h1>

		<div class="welcome-message">
			<%
			String id = (String)session.getAttribute("id");
			out.println(id);

			String pw = (String)session.getAttribute("pw");

			MemberDAO memberDAO = new MemberDAO();
			out.println(memberDAO.memberSelect(id).getName() + " 관리자님, 환영합니다!");
			%>
		</div>

		<div class="navigation">
			<h3>관리 페이지</h3>
			<a href="memberManage.jsp">회원관리</a>

			<h3>승인 페이지</h3>
			<a href="approvalJoin.jsp">회원가입 승인</a>
			<a href="approvalWithdraw.jsp">회원탈퇴 승인</a>
		</div>

		<div class="logout-link">
			<a href="AdLogout.jsp">로그아웃</a>
		</div>
	</div>
</body>
</html>
