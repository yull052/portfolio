<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Portfolio Store</title>
	
	<link href="../resources/css/chanPwdForm.css" rel="stylesheet">
</head>

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
<script src="../resources/js/jquery/jquery.min.js"></script>
<script src="../resources/js/chanPwdForm.js"></script>
</body>
</html>
