<%@page import="org.apache.tomcat.util.threads.StopPooledThreadException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="com.daodto.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>���� ���� ��û ����</h2>
	<form action="approvalJoinOk.jsp" method="post">
	<%
	MemberDAO memberDAO = new MemberDAO();
	ArrayList<MemberDTO> dtoList = memberDAO.statusSelect();
	
	for (MemberDTO dto : dtoList) {
		out.println(dto.getName() + ", " + dto.getId() +  ", " + dto.getPhone() + ", " + dto.getEmail() + ", " + dto.getStatus() + "<br>");
	}
	%>
	
	<br/>
	���� ������ ȸ���� id�� �Է��ϼ���.<br/><br/>
	���̵�: <input type="text" name="id"> <br/><br/>
	<input type="submit" value="���� ����">	
	
	</form>
	
</body>	
</html>
