<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<link href="../resources/css/bootstrap/bootstrap.min.lux.css" rel="stylesheet">
	<link href="../resources/css/admin/header.css" rel="stylesheet">
	<style>
		.container{
			margin : 2%;
		}
	</style>
</head>

<body>	
	<div class="wrapDiv">
		<jsp:include page="../adminHeader.jsp" />		
		<div class="container">
			<h1>상품 목록</h1>
			<div class="goods_list">
				
			</div>
		</div>		
	</div>
<script src="../resources/js/jquery/jquery.min.js"></script>
<script src="../resources/js/bootstrap/bootstrap.min.js"></script>

<script src="../resources/js/admin/header.js"></script>
</body>
</html>