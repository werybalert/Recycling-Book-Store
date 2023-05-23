<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
	
</body>
</html>