<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Portfolio Store</title>  
	
	<link href="../resources/css/loginForm.css" rel="stylesheet" > 
</head>

<body>
	<div class="wrapDiv">
		<div class="mainConDiv">
			<div class="infoDiv">
				<input type="text" id="userId" placeholder="아이디 입력"><br>
				<input type="password" id="userPwd" placeholder="비밀번호 입력">
			</div>
			<div class="loginBtnDiv">
				<input type="button" id="loginBtn" value="로그인"><br>
			</div>
			
			<div class="imgDiv">
			    <c:if test="${userId eq null}"><!--  로그인 정보가 없을때 표시 -->
			        <a href="https://kauth.kakao.com/oauth/authorize?client_id=5df09c88617992c81edb27ca7f25fbb9&redirect_uri=http://localhost:8080/portfolioStore/login/kakaoLogin.do&response_type=code">
			            <img src="../resources/img/kakao_login_btn_medium_wide.png">
			        </a>
			    </c:if>
			    <c:if test="${userId ne null}"><!--  로그인 정보가 있을 때 표시 -->
			        <c:redirect url="../store/storeMain.do"></c:redirect>
			    </c:if>
		    </div>
		    
		    <div class="btnDiv">
		    	<input type="button" id="joinBtn" value="회원가입">
		    	<input type="button" id="findInfoBtn" value="정보 찾기">
		    </div>
	    </div>
    </div>
<script src="../resources/js/jquery/jquery.min.js"></script>
<script src="../resources/js/loginForm.js"></script>
</body>
</html>
