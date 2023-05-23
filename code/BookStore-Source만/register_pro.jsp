<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
 <style>
     html, body { margin: 0; padding: 0; background-color:#ede5d0}
   </style>
   <% 
	request.setCharacterEncoding("utf-8");

	String book_title = request.getParameter("book_title");
	String university = request.getParameter("university");
	String major = request.getParameter("major");    
	String grade = request.getParameter("grade");    
	String subject = request.getParameter("subject");  
	String price = request.getParameter("price");  
	String email = request.getParameter("email");    
	String index = request.getParameter("index");    

	index = "1";
	
	String score = request.getParameter("score");
	String underlinec = request.getParameter("underlinec");
	String notec = request.getParameter("notec");
	String cleanc = request.getParameter("cleanc");
	String namec = request.getParameter("namec");
	String pagec = request.getParameter("pagec");


   Connection conn=null;
   PreparedStatement pstmt=null;
   try{
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
     String dbId="jspid";
     String dbPass="jsppass";
 	 
	 Class.forName("com.mysql.cj.jdbc.Driver");   	 
 	 //데이터베이스 연결(connection)
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into BookRegister values (?,?,?,?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1, email);
     pstmt.setString(2, book_title);
 	 pstmt.setString(3, university);
 	 pstmt.setString(4,	major);
 	 pstmt.setString(5, grade);
 	 pstmt.setString(6, subject);
 	 pstmt.setString(7, price);
 	 pstmt.setString(8, index);
 	 
 	String sql1= "insert into Scratch values (?,?,?,?,?,?)";
	 pstmt=conn.prepareStatement(sql1);
	 pstmt.setString(1, score);
     pstmt.setString(2, underlinec);
	 pstmt.setString(3, notec);
	 pstmt.setString(4, cleanc);
	 pstmt.setString(5, namec);
	 pstmt.setString(6, pagec);
 	 
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
</head>
<body>
	<section class="section"><p>
 	<% request.setCharacterEncoding("utf-8"); %> 
	</section>
   <h1>'<%=book_title %>'의 판매등록이 완료되었습니다.</h1>
   <form name="list" target="_blank" action="list.jsp"> 
            <div class = "listgo"></div>
            <input type="submit" size="30" value="목록창으로 이동" >
   </form>
</body>
</html>