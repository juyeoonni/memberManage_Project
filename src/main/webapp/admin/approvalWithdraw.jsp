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
	<h2>Ż�� ���� ��û ����</h2>
	<form action="approvalWithdrawOk.jsp" method="post">
	<%
	MemberDAO memberDAO = new MemberDAO();
	ArrayList<MemberDTO> dtoList = memberDAO.pauseSelect();
	
	for (MemberDTO dto : dtoList) {
		out.println(dto.getName() + ", " + dto.getId() +  ", " + dto.getPhone() + ", " + dto.getEmail() + ", " + dto.getStatus() + "<br>");
	}
	
	%>
	
	<br/>
	Ż�� ������ ȸ���� id�� �Է��ϼ���.<br/><br/>
	���̵�: <input type="text" name="id"> <br/><br/>
	<input type="submit" value="Ż�� ����">	
	
	</form>
	
</body>
</html>