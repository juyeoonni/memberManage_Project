<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 프로그램</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f2f2f2;
		text-align: center;
	}

	h2 {
		color: #333333;
	}

	.button-container {
		margin-top: 50px;
	}

	.button-container button {
		display: inline-block;
		padding: 10px 20px;
		font-size: 18px;
		border-radius: 5px;
		border: none;
		background-color: #3a86ff; /* 하늘색 */
		color: white;
		text-align: center;
		cursor: pointer;
		margin-right: 10px;
	}

	.button-container button:hover {
		background-color: #1660bf; /* 진한 하늘색 */
	}
</style>
</head>
<body>
	<h2>회원관리 프로그램</h2>
	<p>환영합니다! 사용자 모드를 선택하세요!</p>
	<div class="button-container">
		<button type="button" onclick="location.href='user/login.jsp'">사용자 모드</button>
		<button type="button" onclick="location.href='admin/AdLogin.jsp'">관리자 모드</button>
	</div>
</body>
</html>
