<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/header.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
    <header>
        <div id="header-wrap">
            <div id="logo"><a href="${pageContext.request.contextPath}/">CODUCK</a></div>
            <ul id="nav">
                <li><a href="${pageContext.request.contextPath}/">홈</a></li>
                <li><a href="${pageContext.request.contextPath}/community/main">소통</a></li>
                <li><a href="#">나눔/교환</a></li>
                <li><a href="#">소식</a></li>
                <li><a href="#">Q & A</a></li>
            </ul>
            <div id="menubtn"><i class="fas fa-bars fa-2x"></i></div>
            <c:if test="${empty sessionScope.account}">
	            <div class="user user-logout"><i class="fas fa-user fa-2x"></i></div>
	            <ul id="user-menu-logout">
	                <li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
	                <li><a href="${pageContext.request.contextPath}/member/signup">회원가입</a></li>
	            </ul>
            </c:if>
            <c:if test="${!empty sessionScope.account}">
            	<div class="user user-login"><i class="fas fa-user fa-2x"></i></div>
	            <ul id="user-menu-login">
	                <li class="user-nickname">${sessionScope.account.id}</li>
	                <li><a href="#">마이페이지</a></li>
	                <li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
	            </ul>
            </c:if>

            <div id="menu">
            	<c:if test="${empty sessionScope.account}">
                	<p>로그아웃 상태</p>
	                <ul id="user-logout">
	                    <li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/signup">회원가입</a></li>
	                </ul>                	
            	</c:if>
            	<c:if test="${!empty sessionScope.account}">
            		<p>${sessionScope.account.id}</p>
	                <ul id="user-login">
	                    <li><a href="#">마이페이지</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
	                </ul> 
            	</c:if>
                
                <ul id=category>
                    <li><a href="${pageContext.request.contextPath}/">홈</a></li>   
                    <li><a href="${pageContext.request.contextPath}/community/main">소통</a></li>   
                    <li><a href="#">나눔/교환</a></li>
                    <li><a href="#">소식</a></li>
                    <li><a href="#">Q & A</a></li>
                </ul>
            </div>
        </div>
    </header>


	<script type="text/javascript">
	    $(function(){
	    	$("#menubtn").click(function(){
	    		$("#menu").toggleClass("active");
	    	});
	    	
	    	$(".user-logout").click(function(){
	    		$("#user-menu-logout").toggleClass("active");
	    	});
	    	
	    	$(".user-login").click(function(){
	    		$("#user-menu-login").toggleClass("active");
	    	});
	    });
	</script>

</body>
</html>