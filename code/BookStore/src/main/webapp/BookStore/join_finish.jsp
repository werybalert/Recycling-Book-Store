<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <style>
     html, body { margin: 0; padding: 0; background-color:#ede5d0}
  </style>
 <body>
 <% request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="member" scope="page" class="book.bean.MemberRegister">
 	<jsp:setProperty name="member" property="*"/>
 </jsp:useBean>
 <h1> <jsp:setProperty name="member" property="name"/>님, 회원가입을 축하합니다<h1>
 </body>
</html>