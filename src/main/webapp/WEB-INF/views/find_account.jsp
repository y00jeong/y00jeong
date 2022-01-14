<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/find_account.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<a href="#" id="logo">CODUCK</a>
    <div id="find-wrap">
        <div id="find">
            <form action="" id="find_id">
                <ul>
                    <li class="title">아이디 찾기</li>
                    <li class="comment">가입시 등록한 이메일 주소를 입력하세요.</li>
                    <li><input type="text" id="id-email" name="email" placeholder="이메일 주소"></li>
                    <li id="find-id-result"></li>
                </ul>
                <button type="submit" class="find-id-btn">ID 찾기</button>
                <button type="button" class="go-login">로그인하러 가기</button>
            </form>
            <form action="" id="find-pw">
                <ul>
                    <li class="title">비밀번호 찾기</li>
                    <li class="comment">아이디와 가입시 등록한 이메일, 비밀번호 찾기 질문/답변을 입력해주세요.</li>
                    <li><input type="text" id="id" name="id" placeholder="아이디"></li>
                    <li><input type="text" id="pw-email" name="email" placeholder="이메일 주소"></li>
                    <li>
                        <select name="pwquestion" id="pwquestion">
                            <option value="pwq1">다른 이메일 주소는?</option>
                            <option value="pwq2">가장 좋아하는 색은?</option>
                            <option value="pwq3">나의 최애 화장품은?</option>
                            <option value="pwq4">나의 좌우명은?</option>
                        </select>
                    </li>
                    <li><input type="text" id="pwq-answer" name="pwq-answer" placeholder="답변"></li>
                    <li id="find-pw-result"></li>
                </ul>
                <button type="submit" class="find-pw-btn">비밀번호 찾기</button>
                <button type="button" class="go-login">로그인하러 가기</button>
            </form>
        </div>
    </div>

	<jsp:include page="footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		$(function(){
			$(".go-login").click(function(){
				location.href = "${pageContext.request.contextPath}/member/login";	
			});
		});
	</script>
	
</body>
</html>