<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/community.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrap">
        <div id="category-header"></div>
        <img id="category-header" src="${pageContext.request.contextPath}/resources/img/category_header.jpg" alt="소통_헤더사진">
        <div class="category-tabs">
            <span class="category-tab all">전체</span>
            <span class="category-tab talk">수다</span>
            <span class="category-tab question">질문</span>
            <span class="category-tab review">후기</span>
        </div>
        <div class="container">
            <p class="category-notice">질문 & 후기 카테고리는 코스메틱 관련 질문과 후기를 작성하는 카테고리입니다.
                다른 잡답성 글은 수다 카테고리에 올려주세요.</p>
            <div class="nav">
            	<c:if test="${empty sessionScope.account}">
	            	<div></div>            	
            	</c:if>
            	<c:if test="${!empty sessionScope.account}">
	                <button type="button" id="create">글쓰기</button>
            	</c:if>
                <div class="search">
                    <select name="search-category" id="search-category">
                        <option value="all">제목+내용</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input type="text" id="search-input" name="search-input">
                    <button id="search-btn">검색</button>
                </div>
            </div>
            <table class="community-board">
                <thead>
                    <tr>
                        <th class="num">번호</th>
                        <th class="category">카테고리</th>
                        <th class="title">제목</th>
                        <th class="owner">작성자</th>
                        <th class="date">작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="num">556</th>
                        <th class="category">질문</th> 
                        <td class="title"><span>국가는 근로의 의무의 내용과</span><span class="reply">5</span></td>
                        <th class="owner">coco123</th>
                        <th class="date">2021-12-18</th>
                    </tr>
                    <tr>
                        <th class="num">556</th>
                        <th class="category">질문</th> 
                        <td class="title"><span>국가는 근로의 의무의 내용과</span><span class="reply">5</span></td>
                        <th class="owner">coco123</th>
                        <th class="date">2021-12-18</th>
                    </tr>
                    <tr>
                        <th class="num">556</th>
                        <th class="category">질문</th> 
                        <td class="title"><span>국가는 근로의 의무의 내용과</span><span class="reply">5</span></td>
                        <th class="owner">coco123</th>
                        <th class="date">2021-12-18</th>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		$(function(){
			$("#create").click(function(){
				location.href = "${pageContext.request.contextPath}/community/create";
			})
		})
	</script>
</body>
</html>