<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>"리사이클링 앱 로그인"</title>
<style>
html, body { margin: 0; padding: 0; height: 100%; }
header { width: 100%; height: 15%; }
nav { width: 20%; height: 70%; float: left; }
section { width: 60%; height: 70%; float: left; background-color: #ede5d0; text-align: center;}
aside { width: 20%; height: 70%; float: left; }
footer { width: 100%; height: 15%; ; }
</style>

</head>
<body>
    <script>
   		 <input type="text" size="15">
        function showPopup(){ //팝업창
            window.open("login_finish.jsp","팝업","width=400, height=300, top=10, left=10");
        }
        
    </script>

<header class="header"> </header> 
<nav class="nav">  </nav>
<section class="section"> <p>
    <img src="everytime.png" width="200" height="200"> <p>

        <form name="login" method="get" action="login_finish.jsp"> 
            
            <fieldset>
                <legend><h1>Log In</h1></legend>
                <table>
                    <tr>
                        <td>ID :</td>
                        <td><input type="email" size="15" value="" placeholder="이메일" aria-placeholder="id@host"></td>
                        <td></td>
                    <tr>
                        <td>PW :</td>
                        <td><input type="password"size="15" value="" placeholder=""></td>
                        <td></td>
                    <tr>
                        <td><input type="button" value="로그인" onclick="showPopup()"> </td>
                        <td><input type="reset" value="초기화"><br></td>    
                    <tr>
                        <td><a href="join.jsp" target="_self">회원가입</a></td>
                        <td></td>
                </table>
            </form>
        
</section>
<aside class="aside"></aside>
<footer class="footer"> 4조</footer>
</body>
</html>