<%@page import="com.daodto.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

MemberDAO memberDAO = new MemberDAO();

if(memberDAO.loginCheck(id, pw)){
    // 로그인에 성공한 경우 세션에 id와 pw 저장
    session.setAttribute("id", id);
    session.setAttribute("pw", pw);
    response.sendRedirect("AdMain.jsp");
} else {
    out.println("로그인 실패하였습니다.");
%>
<script>
    setTimeout(function() {
        location.href = 'AdLogin.jsp';
    }, 2000); // 2초 후에 AdLogin.jsp로 이동
</script>
<%
}
%>
</body>
</html>
