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
	<h2>���� ���� ��û</h2>
	
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
	out.println(memberDTO.getName() + "��, ȸ�� ���� ���� ��û �Ǿ����ϴ�.");
	%>
	
	<a href="../home.jsp">ó������</a>
	
		
</body>
</html>