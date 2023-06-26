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
	<h2>가입 승인 요청</h2>
	
	<%
	request.setCharacterEncoding("EUC-KR");
	MemberDAO memberDAO = new MemberDAO();
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	MemberDTO memberDTO = new MemberDTO(name, id, pw, phone, email);
	memberDAO.memberInsert(memberDTO);
	out.println(memberDTO.getName() + "님, 회원 가입 승인 요청 되었습니다.");
	%>
	
	<a href="../home.jsp">처음으로</a>
	
		
</body>
</html>