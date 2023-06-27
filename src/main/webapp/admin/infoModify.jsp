<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 사항 입력</title>
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
		display: inline-block;
		padding: 12px 24px;
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
		<h2>회원 정보 수정 사항 입력</h2> <br/>
		<form action="infoModifyOk.jsp" method="post">
			<%
			String id = request.getParameter("id");
			%>
			이름 <input type="text" name="name"> <br/>
			아이디 <input type="text" name="id" value="<%= id %>" readonly> <br/>
			비밀번호 <input type="password" name="pw"> <br/>
			이메일 <input type="email" name="email"> <br/>
			회원상태 <input type="text" name="status"> <br/><br/>
			<input type="submit" value="수정">
		</form>
	</div>
</body>
</html>
