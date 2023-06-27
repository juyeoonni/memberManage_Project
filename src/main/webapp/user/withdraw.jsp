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
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        margin-top: 0;
    }

    form {
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="password"] {
        padding: 5px;
        width: 50%;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    input[type="submit"] {
        padding: 10px 20px;
        background-color: #3498db;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>회원 탈퇴 요청</h2>

        <form action="withdrawOk.jsp" method="post">
            비밀번호 입력: <input type="password" name="pw" id="pw"><br/><br/>
            
            <input type="submit" value="탈퇴 요청">
        </form>
    </div>
</body>
</html>
