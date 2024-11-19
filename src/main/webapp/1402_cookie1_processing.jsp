<!-- 1402_cookie1_processing.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Processing</title>
</head>
<body>
<%
  String user_id = request.getParameter("id");
String user_pw = request.getParameter("pw");
String user_cookie = request.getParameter("cookie");

if(user_id.equals("admin")&& user_pw.equals("1234")){
	Cookie cookie_id = new Cookie("userID",user_id);
	Cookie cookie_pw = new Cookie("userPW",user_pw);
	Cookie cookie_ck= new Cookie("userCk",user_cookie);
	
	response.addCookie(cookie_id);
	response.addCookie(cookie_pw);
	response.addCookie(cookie_ck);
	
	response.sendRedirect("1403_cookie1_results.jsp");
} else {
	out.println("쿠키 생성이 실패헀습니다");
}
%>
</body>
</html>