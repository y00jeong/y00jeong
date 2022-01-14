<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
</head>
<body>
    <a href="${pageContext.request.contextPath}/" id="logo">CODUCK</a>
    <div id="login-wrap">
        <div id="login">
            <div id="tabs">
                <a href="${pageContext.request.contextPath}/member/login" id="login-tab">로그인</a>
                <a href="${pageContext.request.contextPath}/member/signup" id="signup-tab">회원가입</a>
            </div>
            <form action="${pageContext.request.contextPath}/member/login_result" id="login-form" method="post">
                <ul>
                    <li><input type="text" name="id" id="id" placeholder="아이디"></li>
                    <li><input type="password" name="password" id="password" placeholder="비밀번호"></li>
                    <li><button type="submit">로그인</button></li>
                    <li>
                        <ul>
                            <li><input type="checkbox" name="maintain" id="maintain"><label for="maintain">로그인 유지</label></li>
                            <li><a href="${pageContext.request.contextPath}/member/find_account" id="find">ID/PW찾기</a></li>
                        </ul>
                    </li>
                </ul>
            </form>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>