<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매글 등록</title>
<style>
	html, body { margin: 0; padding: 0; height: 100%; }
	header { width: 100%; height: 15%; }
	nav { width: 20%; height: 70%; float: left; }
	section { width: 60%; height: 70%; float: left; background-color: #ede5d0; text-align: center;}
	aside { width: 20%; height: 70%; float: left; }
	footer { width: 100%; height: 15%; ; }</style>
</head>
<body>
<header class="header"></header> 
<nav class="nav">  </nav>
<section class="section"><p>
 		<fieldset>
        <legend><h1>판매글 작성</h1></legend>
        <form method="post" action="register_pro.jsp"> 
        <table style="text-align: center; border: 1px solid #dddddd">
			<tr>
				<td>책제목 : </td><td><input type="text" placeholder="책제목" name="book_title"></td>
			</tr>
			<tr>
				<td>과목이름 : </td><td><input type="text" name="subject"></td>
			</tr>
			
			<tr>
				<td>책 가격 :</td><td><input type="text" name="price"></td>
			</tr>
			
			<tr>
				<td>학교 :</td><td><input type="text" name="unversity"></td>
			</tr>
			
			<tr>
				<td>학과 :</td><td><input type="text" name="major"></td>
			</tr>
			<tr>
				<td>이메일 :</td><td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>학년 :</td><td><input type="text" list="grade">
				<datalist id="grade">
                       <option value="1" name="grade_1">
                       <option value="2" name="grade_2">
                       <option value="3" name="grade_3">
                       <option value="4" name="grade_4">
                       </datalist>
				</td>
			</tr>
			
			</table  style="text-align: center; border: 1px solid #dddddd">
			<input type="button" value="내 정보 불러오기">
			<table style="text-align: center; border: 1px solid #dddddd">
              <tr>
                <td colspan="2"><strong>필기한 흔적</strong></td></tr>
                <tr>
                    <td><label>밑줄<input type="checkbox" name="underline" value="underlinec"></label></td>
                    <td><label>필기<input type="checkbox" name="notec" value="notec"></label></td>
                </tr>
                <tr><td><br></td><td><br></td>
                <tr>
                    <td colspan="2"><strong>훼손 범위</strong></td></tr>
                    <td><label>이름표기<input type="checkbox" name="namec" value="namec"></label></td>
                    <td><label>겉표지 깨끗<input type="checkbox" name="cleanc" value="cleanc"></label></td>
                    <td><label>페이지 훼손 없음<input type="checkbox" name="pagec" value="pagec"></label></td>        
                </tr>
                <tr>
                    <td colspan="2"><strong>총 오염점수</strong></td></tr>
                    <td><input type="text" name="score"></td>     
                </tr>
                <tr>
				<td><input type="file" name="file1"></td>
				</tr>
                </table>
			<input type="submit" value="작성완료">
         </form>
		</section>
		</fieldset>

</body>
</html>