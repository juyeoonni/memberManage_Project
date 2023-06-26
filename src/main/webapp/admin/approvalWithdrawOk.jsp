<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.daodto.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원탈퇴 승인</h2>
	
	<%
	String id = request.getParameter("id");
	
	MemberDAO memberDAO = new MemberDAO();
	memberDAO.memberDelete(id);
	out.println(id + "님의 회원 탈퇴가 승인되었습니다.");
	%>
	
	<br/><br/>
	<a href="AdMain.jsp">메인으로</a>
	
</body>
</html>