<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-08-24
  Time: 오후 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>login</title>
      <style>
          body{text-align: center}
      </style>
  </head>
  <body>
  <h1>로그인</h1>
  <br>
  <br>
  <form action="login_ok.jsp" method="post">
      아이디:<input type="text" name="id"><br>
      비밀번호:<input type="password" name="pw"><br>
      <input type="submit" value="로그인"><br>
  </form>
  <button type="button" onclick="location.href='join.jsp'">회원가입</button>
  </body>
</html>
