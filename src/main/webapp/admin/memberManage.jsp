<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 관리 페이지</title>
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
		display: block;
		padding: 10px 20px;
		text-decoration: none;
		font-size: 16px;
		border: 1px solid #cccccc;
		border-radius: 5px;
		background-color: #f2f2f2;
		color: #333333;
		margin-bottom: 10px;
		transition: background-color 0.3s ease;
	}

	.container a:hover {
		background-color: #3498db;
		color: white;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>회원 관리 페이지</h2>
		<p>*회원 정보 관리*</p>
		<a href="infoSelect.jsp">회원 정보 조회 및 수정</a>
		<!-- <a href="statusModify.jsp">회원 상태 수정</a> -->
	</div>
</body>
</html>
