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
	<h2>ȸ��Ż�� ����</h2>
	
	<%
	String id = request.getParameter("id");
	
	MemberDAO memberDAO = new MemberDAO();
	memberDAO.memberDelete(id);
	out.println(id + "���� ȸ�� Ż�� ���εǾ����ϴ�.");
	%>
	
	<br/><br/>
	<a href="AdMain.jsp">��������</a>
	
</body>
</html>