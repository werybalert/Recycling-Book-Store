<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>"리사이클링 앱 로그인"</title>
<style>
html, body { margin: 0; padding: 0; width : 100%; height: 100%; }
header { width: 100%; height: 15%; }
nav { width: 20%; height: 70%; float: left;  }
section { width: 60%; height: 100%; float: left; background-color: #ede5d0; text-align: center;}
aside { width: 20%; height: 70%; float: left; }
footer { width: 100%; height: 10%;  }

</style>
</head>
<body>
    <% request.setCharacterEncoding("utf-8"); %>
        <div style="overflow: scroll; width: 100%; height: 100%; float: left;">
            <script>
                function showPopup(){ //팝업창
                    window.open("검색창.html","팝업 테스트","width=500, height=500, top=50, left=50");
                }        
            </script>
        <header class="header"> </header> 
        <nav class="nav">  </nav>
        <section class="section"> <p> 
        <a href="login.jsp" id="anchor">로그아웃</a>
        <h1>가상 목록창</h1>

    <jsp:include page="search.jsp"></jsp:include>
    <ul class="a">
        <li>서적</li>
        <li>교양</li>
        <li>전공</li>
    </ul>
    <ul class="b">
        <li>서적</li>
        <li>교양</li>
        <li>전공</li>
        </ul>
    <ul class="c">
        <li>서적</li>
        <li>교양</li>
        <li>전공</li>
        </ul>
    <ul class="d">
        <li>서적</li>
        <li>교양</li>
        <li>전공</li>
        </ul>
             

    <aside class="aside"></aside>
    <footer class="footer"></footer>
</body>
</html>