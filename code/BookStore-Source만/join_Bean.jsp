<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %> 

	<jsp:useBean id="member" class="book.bean.MemberRegister">
     	<jsp:setProperty name="member" property="*"/>
	</jsp:useBean>
	
<!DOCTYPE html>
<html>
  <style>
     html, body { margin: 0; padding: 0; background-color:#ede5d0}
  </style>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
</head>
<body>
	<h1><jsp:getProperty name="member" property="name" />님, 회원가입을 축하합니다</h1>
	<a href="login.jsp" target="_self">로그인 창으로</a>
</body>
</html>