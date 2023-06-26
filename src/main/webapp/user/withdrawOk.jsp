<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.daodto.MemberDAO, com.daodto.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 요청</title>
</head>
<body>
	<h2>회원 탈퇴 요청</h2>
	
	<%
	request.setCharacterEncoding("UTF-8");
	MemberDAO memberDAO = new MemberDAO();
	
	String id = (String) session.getAttribute("id");
	String sessionPw = (String) session.getAttribute("pw");
	String pw = request.getParameter("pw");
	
	if (sessionPw.equals(pw)) {
		MemberDTO memberDTO = memberDAO.memberSelect(id);
		memberDAO.withdralApproval(id);
		out.println(memberDTO.getName() + "님, 탈퇴 요청 되었습니다.");
	%>
		<a href="../home.jsp">메인화면 돌아가기</a>
	<%
	} else {
		out.println("비밀번호가 일치하지 않습니다. 다시 시도해주세요.");
	%>	
		<a href="withdraw.jsp">비밀번호 재입력</a>
	<%
	}
	%>		
</body>
</html>
