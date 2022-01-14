<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/signup.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
    <a href="${pageContext.request.contextPath}/" id="logo">CODUCK</a>
    <div id="signup-wrap">
        <div id="signup">
            <div id="tabs">
                <a href="${pageContext.request.contextPath}/member/login" id="login-tab">로그인</a>
                <a href="${pageContext.request.contextPath}/member/signup" id="signup-tab">회원가입</a>
            </div>
            <form action="#" id="signup-form">
                <ul>
                    <li>
                        <input type="text" name="id" id="id" placeholder="아이디">
                        <button type="button" class="check id-check">중복확인</button>
                    </li>
                    <li>
                        <input type="password" name="pw" id="pw" placeholder="비밀번호">
                    </li>
                    <li>
                        <input type="password" name="pw-confirm" id="pw-confirm" placeholder="비밀번호 확인">
                    </li>
                    <li>
                        <input type="email" name="email" id="email" placeholder="이메일">
                        <button button type="button" class="check email-check">중복확인</button>
                    </li>
                    <li><label for="pwquestion">비밀번호 찾기 질문/답변</label></li>
                    <li>
                        <select name="pwquestion" id="pwquestion">
                            <option value="pwq1">다른 이메일 주소는?</option>
                            <option value="pwq2">가장 좋아하는 색은?</option>
                            <option value="pwq3">나의 최애 화장품은?</option>
                            <option value="pwq4">나의 좌우명은?</option>
                        </select>
                    </li>
                    <li><input type="text" name="pwqanswer" id="pwqanswer" placeholder="답변"></li>
                    
                    <li><span class="skin">피부 타입</span></li>
                    <ul class="skin-type">
                        <li>
                            <input type="radio" name="skin-type" id="dry">
                            <label for="dry">건성</label>
                        </li>
                        <li>
                            <input type="radio" name="skin-type" id="normal">
                            <label for="normal">중성</label>
                        </li>
                        <li>
                            <input type="radio" name="skin-type" id="oily">
                            <label for="oily">지성</label>
                        </li>
                        <li>
                            <input type="radio" name="skin-type" id="dual">
                            <label for="dual">복합성</label>
                        </li>
                    </ul>

                    <li><span class="skin">피부톤</span></li>
                    <ul class="skin-tone">
                        <li>
                            <input type="radio" name="skin-tone" id="17">
                            <label for="17">17호</label>
                        </li>                        
                        <li>
                            <input type="radio" name="skin-tone" id="21">
                            <label for="21">21호</label>
                        </li>                        
                        <li>
                            <input type="radio" name="skin-tone" id="23">
                            <label for="23">23호</label>
                        </li>                        
                        <li>
                            <input type="radio" name="skin-tone" id="25">
                            <label for="25">25호</label>
                        </li>                        
                    </ul>
                    
                    <ul id="terms">
                        <li>
                            <input type="checkbox" name="terms1" id="terms1"><label for="terms1">[필수] 이용약관 동의</label>
                            <span class="terms-detail terms-detail1">내용보기</span>
                        </li>
                        <li>
                            <input type="checkbox" name="terms2" id="terms2"><label for="terms2">[필수] 개인정보 수집 항목 동의</label>
                            <span class="terms-detail terms-detail2">내용보기</span>
                        </li> 
                    </ul>
                    <li><button type="submit" class="signup-btn">회원가입</button></li>
                </ul>
            </form>
        </div>   
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
    
    <script type="text/javascript">
    	
    </script>

</body>
</html>