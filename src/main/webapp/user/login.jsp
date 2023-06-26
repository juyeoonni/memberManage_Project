<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="loginOk.jsp" method="post">
	<h2>회원 로그인</h2><br/>
	
	아이디: <input type="text" name="id"> <br/><br/> 
	비밀번호: <input type="password" name="pw"> <br/><br/>
	
	<input type="submit" value="로그인"> <br/><br/>
	<button type="button" onclick="location.href='join.jsp'">회원가입</button>
	
	</form>
	
</body>
</html>