<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ�� ���� ���� ���� �Է�</h2> <br/>
	
	<form action="infoModifyOk.jsp" method="post">
	<%
	String id = request.getParameter("id");
	%>
	
	�̸�: <input type="text" name="name"> <br/>
	���̵�: <input type="text" name="id"> <br/>
	��й�ȣ: <input type="password" name="pw"> <br/>
	�̸���: <input type="email" name="email"> <br/>
	ȸ������ : <input type="text" name="status"> <br/><br/>
	<input type="submit" value="����">
	</form>
	
</body>
</html>