<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portfolio Store</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/chanPwdForm.css"/>">
</head>
<script src="<c:url value="http://code.jquery.com/jquery-3.4.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/chanPwdForm.js"/>"></script>
<body>
<div class="mainDiv">
	<input type="hidden" id="userId" value=${userId }>
	<form method="post" id="findForm" action="findInfo.do">
		<div class="textDiv">
			<input type="password" id="userPwd" placeholder="영문, 숫자, 특수문자 포함 (8~15)"><br>
			<input type="password" id="userRePwd" placeholder="비밀번호 확인"> 
		</div>
		<div class="btnDiv">
			<input type="button" id="changBtn" value="비밀번호 변경">
		</div>
	</form>
</div>
</body>
</html>
