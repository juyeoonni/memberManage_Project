<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 정보 수정 사항 입력</h2> <br/>
	
	<form action="infoModifyOk.jsp" method="post">
	<%
	String id = request.getParameter("id");
	%>
	
	이름: <input type="text" name="name"> <br/>
	아이디: <input type="text" name="id"> <br/>
	비밀번호: <input type="password" name="pw"> <br/>
	이메일: <input type="email" name="email"> <br/>
	회원상태 : <input type="text" name="status"> <br/><br/>
	<input type="submit" value="수정">
	</form>
	
</body>
</html>