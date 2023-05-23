<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <meta charset="UTF-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 

<head><title>"리사이클링 앱 로그인"</title>
<style>
html, body { margin: 0; padding: 5; width : 100%; height: 100%; }
header { width: 100%; height: 15%; }
nav { width: 20%; height: 70%; float: left;  }
section { width: 60%; height: 100%; float: left; background-color: #ede5d0; text-align: center;}
aside { width: 20%; height: 70%; float: left; }
footer { width: 100%; height: 10%;  }

</style>
</head>
<body>
        <header class="header"> </header> 
        <nav class="nav">  </nav>
        <section class="section"> 
        <a href="login.html" target="_blank" id="anchor">로그아웃</a>
        <h1>판매목록</h1>
   		<input type="button" value="글쓰기" OnClick="window.location='register.jsp'"> 
        <form name="search" method="get" target ="_blank" > 
    	<fieldset>
        <legend><h1>책 검색</h1></legend>
        <table>
            <tr>
                <td>
                책이름 :</td>
                <td><input type="text" size="10"></td>
                <td></td>

            <tr>
                <td>
                학과 :</td>
                <td><input type="text" size="10"></td>
                    <td></td>
            <tr>  
                <td>
                학년 :</td>
                <td><input type="text" list="grade"><br>
                            <datalist id="grade">
                            <option value="1">
                            <option value="2">
                            <option value="3">
                            <option value="4">
                            </datalist></td>
            <tr>
                <td><input type="submit" value="검색" onclick="search.jsp"></td>
            </tr>
            </table>
            <br><br>
        <secttion class="section">
        
        <%
		request.setCharacterEncoding("utf-8");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
        String dbId="jspid";
        String dbPass="jsppass";
        String sql = "select * from BookRegister";
		try {
			
            Class.forName("com.mysql.cj.jdbc.Driver");   	 
        	 //데이터베이스 연결(connection)
        	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
        	 
		// 데이터베이스에 연결하는 작업 수행
		// 쿼리를 생성gkf 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<td>글번호</td> 
			<td>책이름</td>
			<td>학교</td>
			<td>전공</td>
			<td>학년</td>
			<td>교양/전공</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("book_title")%></td>
			<td><%=rs.getString("major")%></td>
			<td><%=rs.getString("price")%></td>
			<td><%=rs.getString("unversity")%></td>
			<td><%=rs.getString("grade") %></td>
			<td><%=rs.getInt("email") %></td>
		</tr>
		</table>
	<%
		}
	} catch (Exception e) {
	e.printStackTrace();
	} finally {
	try {
	if (rs != null) {
		rs.close();
	}
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}
	%>
      	</section>
      	<aside class="aside"></aside>
      	<footer class="footer"></footer>
    	</section>
      	
</body>
</html>
