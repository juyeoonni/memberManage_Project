<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.daodto.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 정보 조회 내역</h2>
	<%
	MemberDAO memberDAO = new MemberDAO();
	ArrayList<MemberDTO> dtoList = memberDAO.adminAllSelect();
	
	for (MemberDTO dto : dtoList) {
		out.println(dto.getName() + ", " + dto.getId() +  ", " + dto.getPw() + ", " + dto.getPhone() + ", " + dto.getEmail() + ", " + dto.getStatus() + ", " + dto.getRole() + "<br>");
	}
	%>
	
	<h2>회원 상태 수정</h2>
	상태를 수정할 회원의 아이디를 입력해주세요 <br/>
	아이디: <input type="text" name="id">
	<button onclick="location.href='statusModifyOk.jsp'">수정</button>
	
	<br/><br/>
	<button onclick="location.href='memberManage.jsp'">이전으로</button>
	

	
	
	
</body>
</html>