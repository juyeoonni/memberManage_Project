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
	out.println(memberDAO.memberSelect(id).getName() + " �����ڴ�, ȯ���մϴ�!");
	%>
	
	<br/><br/>
	<���� ������><br/>
	<a href="memberManage.jsp">ȸ������</a> <br/><br/>
	
	<���� ������><br/>
	<a href="approvalJoin.jsp">ȸ������ ����</a> <br/>
	<a href="approvalWithdraw.jsp">ȸ��Ż�� ����</a> <br/><br/>
	
	<�α׾ƿ� ������><br/>
	<a href="AdLogout.jsp">�α׾ƿ�</a> <br />
	
	
	
</body>
</html>