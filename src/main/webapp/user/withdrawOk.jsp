<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.daodto.MemberDAO, com.daodto.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 요청</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h2 {
        margin-top: 0;
    }

    .message {
        margin-bottom: 20px;
    }

    .home-link {
        display: inline-block;
        padding: 10px 20px;
        background-color: #3498db;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
    }
</style>
</head>
<body>
    <div class="container">
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
        %>
            <div class="message">
                <%= memberDTO.getName() %>님, 탈퇴 요청되었습니다.
            </div>
            <a class="home-link" href="../home.jsp">메인화면 돌아가기</a>
        <%
        } else {
        %>
            <div class="message">
                비밀번호가 일치하지 않습니다. 다시 시도해주세요.
            </div>
            <a class="home-link" href="withdraw.jsp">비밀번호 재입력</a>
        <%
        }
        %>
    </div>
</body>
</html>
