<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<style>
body {
  font-family: Arial, sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.container {
  width: 400px;
  padding: 20px;
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h2 {
  color: #333;
}

form {
  margin-top: 20px;
}

label {
  display: inline-block;
  width: 80px;
  font-weight: bold;
}

input[type="text"],
input[type="password"],
input[type="email"] {
  width: 200px;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type="submit"] {
  padding: 8px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #0056b3;
}

.error-message {
  color: #FF0000;
}
</style>
</head>
<body>
	<div class="container">
		<h2>ȸ������</h2>
		<h3>�Ʒ� �׸��� �����ϼ���.</h3>
		
		<form action="approvalRequest.jsp" method="post">
			<label for="name">�̸�:</label>
			<input type="text" id="name" name="name"> <br/>
			
			<label for="id">���̵�:</label>
			<input type="text" id="id" name="id"> <br/>	
			
			<label for="pw">��й�ȣ:</label>
			<input type="password" id="pw" name="pw" pattern="^(?=.*[a-zA-Z])(?=.*[0-9]).{4,}$" title="��й�ȣ�� ������ ���ڷ� �����Ǹ� �ּ� 4���� �̻��̾�� �մϴ�."> <br/>
			
			<label for="phone">��ȭ��ȣ:</label>
			<input type="text" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" title="��ȭ��ȣ ���Ŀ� �°� �Է��ϼ���. (��: 010-1234-5678)"> <br/>
			
			<label for="email">�̸���:</label>
			<input type="email" id="email" name="email"> <br/><br/>
		
			<input type="submit" value="���� ���� ��û">
		</form>
	</div>
</body>
</html>
