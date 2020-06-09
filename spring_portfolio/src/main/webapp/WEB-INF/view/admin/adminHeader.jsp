<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	   
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Portfolio Store Admin</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
	
  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" id="home">
        <a class="nav-link" href="../admin/adminIndex.do?current=home">Home</a>
      </li>
      <li class="nav-item" id=goodsManage>   
      	<a class="nav-link" href="../admin/goodsManage.do?current=goodsManage">상품관리</a>     
      </li>
      <li class="nav-item" id="Manage">
        <a class="nav-link" href="about.do?current=board">매출관리</a>
      </li>
      <li class="nav-item" id="Manage">
        <a class="nav-link" href="about.do?current=board">게시판관리</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>  	
  	<div class="infoBtn_group">
  		<a id="userName"> 관리자님</a>
     	<input type="button" value="로그아웃" onclick="location.href='../login/logout.do'">
    </div>
  </div>
</nav>