<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.daodto.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 승인</title>

<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f1f1f1;
		margin: 0;
		padding: 0;
	}

	.container {
		width: 400px;
		margin: 100px auto;
		padding: 20px;
		background-color: #fff;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	}

	h2 {
		text-align: center;
		color: #333;
	}

	.message {
		margin-bottom: 20px;
		text-align: center;
		font-size: 18px;
	}

	.button {
		text-align: center;
		margin-top: 20px;
	}

	.button a {
		display: inline-block;
		padding: 10px 20px;
		border: none;
		border-radius: 3px;
		background-color: #3498db;
		color: #fff;
		font-size: 16px;
		text-decoration: none;
		cursor: pointer;
		transition: background-color 0.3s;
	}

	.button a:hover {
		background-color: #555;
	}
</style>

</head>
<body>
	<div class="container">
		<h2>회원탈퇴 승인</h2>

		<div class="message">
			<%
			String id = request.getParameter("id");

			MemberDAO memberDAO = new MemberDAO();
			memberDAO.memberDelete(id);
			out.println(id + "님의 회원 탈퇴가 승인되었습니다.");
			%>
		</div>

		<div class="button">
			<a href="AdMain.jsp">메인으로</a>
		</div>
	</div>
</body>
</html>
