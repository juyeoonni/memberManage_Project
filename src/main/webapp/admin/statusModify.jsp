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
	<h2>ȸ�� ���� ��ȸ ����</h2>
	<%
	MemberDAO memberDAO = new MemberDAO();
	ArrayList<MemberDTO> dtoList = memberDAO.adminAllSelect();
	
	for (MemberDTO dto : dtoList) {
		out.println(dto.getName() + ", " + dto.getId() +  ", " + dto.getPw() + ", " + dto.getPhone() + ", " + dto.getEmail() + ", " + dto.getStatus() + ", " + dto.getRole() + "<br>");
	}
	%>
	
	<h2>ȸ�� ���� ����</h2>
	���¸� ������ ȸ���� ���̵� �Է����ּ��� <br/>
	���̵�: <input type="text" name="id">
	<button onclick="location.href='statusModifyOk.jsp'">����</button>
	
	<br/><br/>
	<button onclick="location.href='memberManage.jsp'">��������</button>
	

	
	
	
</body>
</html>