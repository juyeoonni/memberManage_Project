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
	<%= sName%> ȸ���� �α׾ƿ� �Ǿ����ϴ�.
	<% session.invalidate(); %> 
	
	<a href="../home.jsp">ó������</a><br />
</body>
</html>