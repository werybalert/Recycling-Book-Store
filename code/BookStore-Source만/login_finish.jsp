<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> </head>
 <style>html, body { margin: 0; padding: 0; height: 100%; background-color: #ede5d0; text-align: center; }
    header { width: 100%; height: 15%; }
    nav { width: 20%; height: 70%; float: left; }
    section { width: 60%; height: 70%; float: left; }
    aside { width: 20%; height: 70%; float: left; }
    footer { width: 100%; height: 15%; ; }</style>
    <body><header class="header"></header> 
        <nav class="nav"></nav>
        <section class="section"><p>
            <h3>로그인에 완료 하였습니다~ </h3>
      
        <form name="list" target="_blank" action="list.jsp"> 
            <div class = "listgo"></div>
            <input type="submit" size="30" value="목록창으로 이동" >
        </form>
    
        <form name="sell" target="_blank"  action="register.jsp"> 
            <div class = "sellgo"></div>
           <input type="submit" size="30" value="판매창으로 이동" >
        </form>
    
     </section>
     <aside class="aside"></aside>
                <footer class="footer"></footer>
    </body>
</html>