<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
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

	.container input[type="text"],
	.container input[type="password"],
	.container input[type="email"] {
		display: block;
		width: 100%;
		padding: 10px;
		margin-bottom: 20px;
		border: 1px solid #cccccc;
		border-radius: 5px;
		font-size: 16px;
	}

	.container input[type="submit"] {
		display: block;
		width: 100%;
		padding: 12px;
		font-size: 18px;
		border: none;
		border-radius: 5px;
		background-color: #3498db;
		color: white;
		cursor: pointer;
		margin-top: 20px;
		transition: background-color 0.3s ease;
	}

	.container input[type="submit"]:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="container">
		<form action="modifyOk.jsp" method="post">
			<h2>회원정보 수정</h2> <br>
			이름 <input type="text" name="name"> <br>
			비밀번호 <input type="password" name="pw"> <br>  
			전화번호 <input type="text" name="phone"> <br>
			이메일 <input type="email" name="email"> <br>
			<input type="submit" value="전송">
		</form>
	</div>
</body>
</html>
