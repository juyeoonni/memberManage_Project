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
	<h2>회원가입 승인</h2>
	<%
	String id = request.getParameter("id");
	
	MemberDAO memberDAO = new MemberDAO();
	memberDAO.memberApproval(id);
	out.println(id + "님의 회원가입이 승인되었습니다.");
	%>
	<br/><br/>
	<button onclick="window.location.href='AdMain.jsp'">메인으로</button>
	
</body>
</html>