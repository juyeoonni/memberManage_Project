<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>
	<h3>아래 항목을 기입하세요.</h3>
	
	<form action="approvalRequest.jsp" method="post">
	이름: <input type="text" name="name"> <br/>
	아이디: <input type="text" name="id"> <br/>	
	비밀번호: <input type="password" name="pw"> <br/>
	전화번호: <input type="text" name="phone"> <br/>
	이메일: <input type="email" name="email"> <br/><br/>
	
	<input type="submit" value="가입 승인 요청">
	
	
	</form>
	
	
	
</body>
</html>