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
	<%
	String id = (String)session.getAttribute("id");
	out.println(id);
	
	String pw = (String)session.getAttribute("pw");
	
	MemberDAO memberDAO = new MemberDAO();
	out.println(memberDAO.memberSelect(id).getName() + " 회원님, 환영합니다!");
	%>
	
	<a href="logout.jsp">로그아웃</a> <br />
	<a href="modify.jsp">회원정보 수정</a> <br />
	<a href="withdraw.jsp">회원탈퇴</a> <br />
	
	
	
</body>
</html>