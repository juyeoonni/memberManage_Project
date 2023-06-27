<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h1 {
        margin-top: 0;
    }

    .logout-message {
        margin-top: 30px;
        margin-bottom: 50px;
        font-size: 20px;
    }

    .home-link {
        display: inline-block;
        margin-top: 20px;
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
        <h1>로그아웃</h1>

        <div class="logout-message">
            <% String sName = (String)session.getAttribute("id"); %>
            <%= sName%> 회원님, 로그아웃 되었습니다.
            <% session.invalidate(); %> 
        </div>

        <a class="home-link" href="../home.jsp">처음으로</a>
    </div>
</body>
</html>
