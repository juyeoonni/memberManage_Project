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
	out.println(memberDAO.memberSelect(id).getName() + " 관리자님, 환영합니다!");
	%>
	
	<br/><br/>
	<관리 페이지><br/>
	<a href="memberManage.jsp">회원관리</a> <br/><br/>
	
	<승인 페이지><br/>
	<a href="approvalJoin.jsp">회원가입 승인</a> <br/>
	<a href="approvalWithdraw.jsp">회원탈퇴 승인</a> <br/><br/>
	
	<로그아웃 페이지><br/>
	<a href="AdLogout.jsp">로그아웃</a> <br />
	
	
	
</body>
</html>