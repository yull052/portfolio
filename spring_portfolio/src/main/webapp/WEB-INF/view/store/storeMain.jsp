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
	<link href="../resources/css/header.css" rel="stylesheet">
</head>

<body>
<div class="mainDiv">
	<!-- 세션에 아이디 없을 시 main으로 -->	
	<c:if test="${userId eq null}">
		<c:redirect url="../main/main.do"></c:redirect>
	</c:if>
	<!-- admin로그인 시 관리자 페이지로 -->
	<c:if test="${admin eq 1 }">
		<c:redirect url="../admin/adminIndex.do"></c:redirect>
	</c:if>
	
	
	<jsp:include page="../template/header.jsp" />
	
	
	<div class="contentsDiv"> 콘텐츠 작성 공간</div>
	<input type="button" value="로그아웃" onclick="location.href='../login/logout.do'">

</div>

<script src="../resources/js/jquery/jquery.min.js"></script>
<script src="../resources/js/bootstrap/bootstrap.min.js"></script>
<script src="../resources/js/storeMain.js"></script>
<script src="../resources/js/header.js"></script>
</body>
</html>