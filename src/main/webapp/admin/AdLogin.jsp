<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자 로그인</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        text-align: center;
    }

    h2 {
        color: #333333;
        margin-bottom: 30px;
    }

    .form-container {
        width: 300px;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .form-container input[type="text"],
    .form-container input[type="password"] {
        display: block;
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #cccccc;
        border-radius: 5px;
        font-size: 16px;
    }

    .form-container input[type="submit"] {
        display: inline-block;
        width: 100%;
        padding: 12px;
        font-size: 18px;
        border: none;
        border-radius: 5px;
        background-color: #3498db;
        color: white;
        cursor: pointer;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }

    .form-container input[type="submit"]:hover {
        background-color: #45a049;
    }

    .form-container .form-actions {
        text-align: right;
        margin-top: 20px;
    }

    .form-container .form-actions a {
        display: inline-block;
        padding: 10px 20px;
        text-decoration: none;
        font-size: 16px;
        border-radius: 5px;
        border: none;
        background-color: #3498db;
        color: white;
        transition: background-color 0.3s ease;
    }

    .form-container .form-actions a:hover {
        background-color: #3498db;
    }
</style>
</head>
<body>
    <div class="form-container">
        <form action="AdLoginOk.jsp" method="post">
            <h2>관리자 로그인</h2>
            <input type="text" name="id" placeholder="아이디"><br/><br/>
            <input type="password" name="pw" placeholder="비밀번호"><br/><br/>
            <input type="submit" value="로그인"><br/><br/>
        </form>
    </div>
</body>
</html>
