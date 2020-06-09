<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Portfolio Store</title>
<link href="../resources/css/bootstrap/bootstrap.min.lux.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Portfolio Store</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">   
		  <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
			<button type="button" class="btn btn-primary">Product</button>
			<div class="btn-group" role="group">
			  <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
			  <div class="dropdown-menu" aria-labelledby="btnGroupDrop1" style="">
			    <a class="dropdown-item" href="asd">Dropdown link</a>
			    <a class="dropdown-item" href="asd">Dropdown link</a>
			  </div>
			</div>
		  </div>        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Board</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<script src="../resources/js/jquery/jquery.min.js"></script>
<script src="../resources/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>