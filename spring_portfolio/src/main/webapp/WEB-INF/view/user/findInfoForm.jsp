<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portfolio Store</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/findInfoForm.css"/>">
</head>
<script src="<c:url value="http://code.jquery.com/jquery-3.4.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/findInfoForm.js"/>"></script>
<body>
<div class="mainDiv">
	<form method="post" id="findForm" action="findInfo.do">
		<div class="textDiv">
			<label id="text1L"></label>
			<div class="text1"></div>
			<br>
			<label id="text2L"></label>
			<div class="text2"></div>
			<br>
		</div>
		<div class="btnDiv">
			<input type="button" class="findBtn" id="idBtn" value="아이디 찾기">
			<input type="button" class="findBtn" id="pwdBtn" value="비밀번호 찾기">
		</div>
	
		<div class="findDiv">
			<input type="button" id="findInfo" value="정보찾기">
			<input type="button" id="cancelBtn" value="취소">
		</div>
	</form>
</div>
</body>
</html>
