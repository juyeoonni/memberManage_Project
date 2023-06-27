<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>

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

	h1 {
		text-align: center;
		color: #333;
	}

	.message {
		margin-bottom: 20px;
		text-align: center;
		font-size: 18px;
	}

	.link {
		text-align: center;
		margin-top: 20px;
	}

	.link a {
		color: #333;
		text-decoration: none;
		transition: color 0.3s;
	}

	.link a:hover {
		color: #f00;
	}

	.button {
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

	.button:hover {
		background-color: #555;
	}
</style>

</head>
<body>
	<div class="container">
		<h1>로그아웃</h1>

		<div class="message">
			<% String sName = (String)session.getAttribute("id"); %>
			<%= sName %> 관리자님, 로그아웃되었습니다.
		</div>
		
		<div class="link">
			<a href="../home.jsp" class="button">처음으로</a>
		</div>
	</div>
</body>
</html>
