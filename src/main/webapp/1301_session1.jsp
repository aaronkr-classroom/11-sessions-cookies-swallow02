<!-- 1301_session1.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 1</title>
</head>
<body>
<% session.invalidate();  %>
  <form action="1304_session3.jsp" method="POST">
    <p>아이디: <input type="text" name="id" /></p>
    <p>비밀번호: <input type="password" name="pw" /></p>
    <p><input type="submit" value="전송" /></p>
  </form>
</body>
</html>