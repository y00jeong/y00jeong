<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div id="wrap">


        <!-- 슬라이드 -->
        <div class="slide-container">
            <div class="slide img1">
                <img class="slide-img" src="${pageContext.request.contextPath}/resources/img/main_img01.jpg">
                <p>코스메틱 이야기,<br>좋아해?</p>
                <a href="">소통 바로가기 &#10095;&#10095;</a>                    
            </div>
            <div class="slide img2">
                <img class="slide-img" src="${pageContext.request.contextPath}/resources/img/main_img02.jpg">
                <p><span class="accent">M</span> a k e u p<br><span class="accent">O</span> f<br><span class="accent">T</span> h e<br><span class="accent">D</span> a y</p>
                <a href="#motd-container">MOTD<br>둘러보기 &#10095;&#10095;</a>
            </div>
            <div class="slide img3">
                <img class="slide-img" src="${pageContext.request.contextPath}/resources/img/main_img03.jpg">
                <p class="p p1">똑똑한 코덕으로</p>
                <p class="p p2">살아가는 법</p>
                <a href="">할인소식 바로가기 &#10095;&#10095;</a>
            </div>

            <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
            <a class="next" onclick="moveSlides(1)">&#10095;</a>
        </div>

        <!-- MOTD -->
        <div id="motd-container">
            <div class="title-box">
                <span class="motd-title">MOTD 둘러보기</span>
                <span class="motd-refresh">새로고침</span>
            </div>
            <ul class="motd-list">
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
                <li class="motd"><div></div></li>
            </ul>
        </div>

    </div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script>
        // 슬라이드
        var slideIndex = 0; 
        
        window.onload = function () {
            showSlides(slideIndex);

            // 자동
            var sec = 4000;
            setInterval(function () {
                slideIndex++;
                showSlides(slideIndex);
            }, sec);
        }

        function moveSlides(n) {
            slideIndex = slideIndex + n
            showSlides(slideIndex);
        }

        function showSlides(n) {
            var slides = document.getElementsByClassName("slide");
            var size = slides.length;

            if ((n + 1) > size) {
                slideIndex = 0; n = 0;
            } else if (n < 0) {
                slideIndex = (size - 1);
                n = (size - 1);
            }

            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }

            slides[n].style.display = "block";
        }
    </script>
</body>
</html>