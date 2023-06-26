<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.daodto.*"%>  
<%@ page import="java.util.ArrayList" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>탈퇴 승인 요청 내역</h2>
	<form action="approvalWithdrawOk.jsp" method="post">
	<%
	MemberDAO memberDAO = new MemberDAO();
	ArrayList<MemberDTO> dtoList = memberDAO.pauseSelect();
	
	for (MemberDTO dto : dtoList) {
		out.println(dto.getName() + ", " + dto.getId() +  ", " + dto.getPhone() + ", " + dto.getEmail() + ", " + dto.getStatus() + "<br>");
	}
	
	%>
	
	<br/>
	탈퇴 승인할 회원의 id를 입력하세요.<br/><br/>
	아이디: <input type="text" name="id"> <br/><br/>
	<input type="submit" value="탈퇴 승인">	
	
	</form>
	
</body>
</html>