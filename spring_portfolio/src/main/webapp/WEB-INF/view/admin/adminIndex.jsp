<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=2, user-scalable=no">
	<title>Portfolio Store</title>
	
	<link href="../resources/css/bootstrap/bootstrap.min.lux.css" rel="stylesheet">
	<link href="../resources/css/admin/header.css" rel="stylesheet">
</head>

<body>
<div class="mainDiv">
	<jsp:include page="../admin/adminHeader.jsp" />
	
	<div class="contentsDiv"> 콘텐츠 작성 공간</div>
	<input type="button" value="로그아웃" onclick="location.href='../login/logout.do'">

</div>

<script src="../resources/js/jquery/jquery.min.js"></script>
<script src="../resources/js/bootstrap/bootstrap.min.js"></script>

<script src="../resources/js/admin/header.js"></script>
</body>
</html>







	
