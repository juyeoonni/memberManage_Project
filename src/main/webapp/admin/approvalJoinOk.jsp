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
	<h2>ȸ������ ����</h2>
	<%
	String id = request.getParameter("id");
	
	MemberDAO memberDAO = new MemberDAO();
	memberDAO.memberApproval(id);
	out.println(id + "���� ȸ�������� ���εǾ����ϴ�.");
	%>
	<br/><br/>
	<button onclick="window.location.href='AdMain.jsp'">��������</button>
	
</body>
</html>