<%@page import="com.daodto.MemberDTO"%>
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
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	
	MemberDAO memberDAO = new MemberDAO();
	
	System.out.println(id);	
	MemberDTO memberDTO = new MemberDTO(id, name, pw, email);
	memberDAO.adminUpdate(memberDTO);
	out.println(memberDAO.memberSelect(id).getName() + "���� ������ �����Ǿ����ϴ�.");
	%>
	
	<a href="AdMain.jsp">����ȭ�� ���ư���</a>
	
	
	
</body>
</html>