<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-08-24
  Time: 오후 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Join</title>
    <style>
        body{text-align: center}
    </style>
</head>
<body>
<h1>회원가입</h1>
<br>
<br>
<form action="join_ok.jsp" method="post">
    아이디:<input type="text" name="id"><br>
    비밀번호:<input type="password" name="pw"><br>
    비밀번호 확인:<input type="password" name="pw"><br>
    <input type="submit" value="회원가입"><br>
</form>
<button type="button" onclick="location.href='index.jsp'">로그인화면으로 돌아가기</button>
</body>
</html>
