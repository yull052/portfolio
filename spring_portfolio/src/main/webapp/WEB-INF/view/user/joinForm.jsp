<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portfolio Store</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/joinForm.css"/>">
</head>
<script src="<c:url value="http://code.jquery.com/jquery-3.4.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/joinForm.js"/>"></script>
<script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"/>"></script>
<body>	
	<div class="mainDiv">
		<div class="formDiv">
			<form method="post" id="joinForm" action="join.do">
				<label>* ID</label>	<br>
				<input type="text" id="userId" name="userId" placeholder="영문자로 시작 (5~12)"/><br>
				
				<label>* 비밀번호</label><br>
				<input type="password" id="userPwd" name="userPwd" placeholder="영문, 숫자, 특수문자 포함 (8~15)"><br>
				<input type="password" id="userRePwd" name="userRePwd" placeholder="비밀번호 확인"><br>
				
				<label>* 이름 </label><br>
				<input type="text" id="userName" name="userName" placeholder="이름 입력"><br>
				
				<label>* 휴대폰</label><br>
				<input type="text" id="userPhone" name="userPhone" placeholder="ex) 010-1234-1234"><br>
				
				<label>이메일 </label><br>
				<input type="text" id="userEmail" name="userEmail" placeholder="이메일 입력(선택)">
			
			<div class="btnDiv">
				<input type="submit" id="joinBtn" value="회원가입">
				<input type="button" id="cancelBtn" value="취소">
			</div>
			
			</form>
		</div>
	</div>
</body>
</html>