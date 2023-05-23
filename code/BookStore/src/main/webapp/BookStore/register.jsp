<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
  html, body { margin: 0; padding: 0; height: 100%; }
  header { width: 100%; height: 15%; }
  nav { width: 20%; height: 70%; float: left; }
  section { width: 60%; height: 70%; float: left; background-color: #ede5d0; text-align: center;}
  aside { width: 20%; height: 70%; float: left; }
  footer { width: 100%; height: 15%;  }
</style>
<title> 도서 등록 창 </title>
	<body>
       <header class="header"></header> 
       <nav class="nav"></nav>
       <section class="section"><p>                
            <script>
                    function showPopup(){ //팝업창
                        window.open("등록완료.html","팝업 테스트","width=400, height=300, top=10, left=10");
                    }
            </script>
            <fieldset>
                <legend><h1>도서 등록을 솔직하게 해주세요.</h1></legend>
                <input type="image" src="/book.jpg" alt="사진">
                <table>
                    <tr>
                        <td>책 이름 :</td>
                        <td><input type="text" size="15"></td>
                        <td></td>
                        <td>
                            <a href="오염도 창.html" target="_blank"> 오염도측정</td>
                    <tr>
                        <td>학교 :</td>
                        <td><input type="text" size="15"></td>
                        <td></td>
                    <tr>
                        <td>학과 :</td>
                        <td><input type="text" size="15"></td>
                        <td></td>
                    <tr>
                        <td>학년 :</td>
                        <td><input type="text" list="grade"><br>
                            <datalist id="grade">
                            <option value="1">
                            <option value="2">
                            <option value="3">
                            <option value="4">
                            </datalist></td>
                        <td></td>                         
                    <tr>
                        <td><input type="button" value="도서 등록하기" onclick="showPopup()"></td>
                        <td></td>                                                
                    <tr>
                        <td><a href="list.jsp" target="_blank">목록으로</a></td>   
                        <td></td>                         
            </section>
            <aside class="aside"></aside>
            <footer class="footer"></footer>

        </body>
</html>