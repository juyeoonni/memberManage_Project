<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="com.daodto.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보 조회 내역</title>
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

	.container table {
		width: 100%;
		border-collapse: collapse;
	}

	.container table th,
	.container table td {
		padding: 8px;
		border: 1px solid #cccccc;
	}

	.container table th {
		background-color: #f2f2f2;
		font-weight: bold;
	}

	.container table td {
		text-align: left;
	}

	.container button {
		display: inline-block;
		padding: 10px 20px;
		text-decoration: none;
		font-size: 16px;
		border: none;
		border-radius: 5px;
		background-color: #3498db;
		color: white;
		margin-top: 20px;
		transition: background-color 0.3s ease;
	}

	.container button:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>회원 정보 조회 내역</h2>
		<table>
			<tr>
				<th>이름</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>회원상태</th>
				<th>회원권한</th>
			</tr>
			<%
			MemberDAO memberDAO = new MemberDAO();
			ArrayList<MemberDTO> dtoList = memberDAO.adminAllSelect();

			for (MemberDTO dto : dtoList) {
				String phoneNumber = dto.getPhone();
				String formattedPhoneNumber = phoneNumber.substring(0, 3) + "-XXXX-XXXX";
				
				out.println("<tr>");
				out.println("<td>" + dto.getName() + "</td>");
				out.println("<td>" + dto.getId() + "</td>");
				out.println("<td>" + dto.getPw() + "</td>");
				out.println("<td>" + formattedPhoneNumber + "</td>");
				out.println("<td>" + dto.getEmail() + "</td>");
				out.println("<td>" + dto.getStatus() + "</td>");
				out.println("<td>" + dto.getRole() + "</td>");
				out.println("</tr>");
			}
			%>
		</table>
		
		<br><br>
		<h2>회원 정보 수정</h2>
		<p>수정할 회원의 아이디를 입력해주세요.</p>
		<form action="infoModify.jsp" method="post">
			<input type="text" name="id" placeholder="아이디">
			<button type="submit">수정</button>
		</form>
		
		<button onclick="location.href='memberManage.jsp'">이전으로</button>
	</div>
</body>
</html>
