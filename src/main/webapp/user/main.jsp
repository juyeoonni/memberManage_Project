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
	out.println(memberDAO.memberSelect(id).getName() + " ȸ����, ȯ���մϴ�!");
	%>
	
	<a href="logout.jsp">�α׾ƿ�</a> <br />
	<a href="modify.jsp">ȸ������ ����</a> <br />
	<a href="withdraw.jsp">ȸ��Ż��</a> <br />
	
	
	
</body>
</html>