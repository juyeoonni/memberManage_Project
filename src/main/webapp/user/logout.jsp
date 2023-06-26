<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String sName = (String)session.getAttribute("id"); %>
	<%= sName%> 회원님 로그아웃 되었습니다.
	<% session.invalidate(); %> 
	
	<a href="../home.jsp">처음으로</a><br />
</body>
</html>