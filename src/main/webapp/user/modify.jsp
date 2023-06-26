<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="modifyOk.jsp" method="post">
	<h2>회원정보 수정</h2> <br />
	이름: <input type="text" name="name"> <br />
	비밀번호: <input type="password" name="pw"> <br />  
	전화번호: <input type="text" name="phone"> <br />
	이메일: <input type="email" name="email"> <br />
	<input type="submit" value="전송">
</form>
</body>
</html>