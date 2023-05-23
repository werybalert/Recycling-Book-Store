<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %> 

<% 
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String passwd = request.getParameter("passwd");    
	String major = request.getParameter("major");    
	String number = request.getParameter("number");  
	String university = request.getParameter("university");    
	String grade = request.getParameter("grade");    


   Connection conn=null;
   PreparedStatement pstmt=null;
   try{
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
     String dbId="jspid";
     String dbPass="jsppass";
 	 
	 Class.forName("com.mysql.cj.jdbc.Driver");   	 
 	 //데이터베이스 연결(connection)
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into MemberRegister values (?,?,?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1, email);
     pstmt.setString(2,passwd);
 	 pstmt.setString(3,name);
 	 pstmt.setString(4,major);
 	 pstmt.setString(5,number);
 	 pstmt.setString(6, university);
 	 pstmt.setString(7, grade);
 	 
 	 pstmt.executeUpdate();
 	 
 	}
   
   catch(Exception e){ 
 		e.printStackTrace();
 	}
   
   finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>
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
	<h1><%=name %>님, 회원가입을 축하합니다</h1>
	<a href="login.jsp" target="_self">로그인 창으로</a>
</body>
</html>