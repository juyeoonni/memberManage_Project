<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.daodto.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 승인 요청 내역</title>

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
		width: 800px;
		margin: 0 auto;
		background-color: #ffffff;
		padding: 30px;
		border-radius: 5px;
		box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	}

	.container table {
		width: 100%;
		border-collapse: collapse;
		margin-bottom: 20px;
	}

	.container table th,
	.container table td {
		padding: 10px;
		border: 1px solid #ccc;
	}

	.container table th {
		background-color: #f2f2f2;
	}

	.container form {
		text-align: left;
		margin-bottom: 20px;
	}

	.container label {
		display: inline-block;
		width: 100px;
		margin-bottom: 10px;
	}

	.container input[type="text"],
	.container input[type="submit"] {
		width: 300px;
		padding: 8px;
		font-size: 16px;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}

	.container input[type="submit"] {
		background-color: #3498db;
		color: white;
		cursor: pointer;
		transition: background-color 0.3s ease;
	}

	.container input[type="submit"]:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>탈퇴 승인 요청 내역</h2>

		<table>
			<thead>
				<tr>
					<th>이름</th>
					<th>아이디</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>상태</th>
				</tr>
			</thead>
			<tbody>
				<%
				MemberDAO memberDAO = new MemberDAO();
				ArrayList<MemberDTO> dtoList = memberDAO.pauseSelect();
				
				for (MemberDTO dto : dtoList) {
					out.println("<tr>");
					out.println("<td>" + dto.getName() + "</td>");
					out.println("<td>" + dto.getId() + "</td>");
					out.println("<td>" + dto.getPhone() + "</td>");
					out.println("<td>" + dto.getEmail() + "</td>");
					out.println("<td>" + dto.getStatus() + "</td>");
					out.println("</tr>");
				}
				%>
			</tbody>
		</table>

		<form action="approvalWithdrawOk.jsp" method="post">
			탈퇴 승인할 회원의 ID를 입력하세요:
			<br/><br/>
			<input type="text" name="id" id="id">
			<br/><br/>
			<input type="submit" value="탈퇴 승인">
		</form>
	</div>
</body>
</html>
