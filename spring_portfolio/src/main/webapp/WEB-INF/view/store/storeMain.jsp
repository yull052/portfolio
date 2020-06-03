<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portfolio Store</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/storeMain.css"/>">
</head>
<script src="<c:url value="http://code.jquery.com/jquery-3.4.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/storeMain.js"/>"></script>
<body>
<div class="mainDiv">
	<!-- 세션에 아이디 없을 시 main으로 -->	
	<c:if test="${userId eq null}">
		<c:redirect url="main/main.do"></c:redirect>
	</c:if>

	
	<jsp:include page="../template/header.jsp" />
	
	
	<div class="contentsDiv"> 콘텐츠 작성 공간</div>

</div>
</body>
</html>