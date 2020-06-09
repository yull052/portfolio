<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>Portfolio Store</title>
	
	<link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="../resources/css/joinForm.css" rel="stylesheet">
</head>

<body>
<input type="hidden" id="authKey" name="authKey">
<div id="join-page" class="row">
  <div class="col s12 z-depth-4 card-panel">
    <form method="post" class="joinForm" action="join.do">

      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">account_circle</i>
          <input id="userId" name="userId" type="text"/>
          <label for="userId">아이디</label>
        </div>
      </div>
      
      
      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-action-lock-outline prefix"></i> -->
          <i class="material-icons prefix">vpn_key</i>
          <input id="userPwd" name="userPwd" type="password" />
          <label for="userPwd">비밀번호</label>
        </div>
      </div>

      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-action-lock-outline prefix"></i> -->
          <i class="material-icons prefix">vpn_key</i>
          <input id="userRePwd" name="userRePwd" type="password" />
          <label for="userRePwd">비밀번호 확인</label>
        </div>
      </div>   
      
      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-action-lock-outline prefix"></i> -->
          <i class="material-icons prefix">account_circle</i>
          <input id="userName" name="userName" type="text" />
          <label for="userName">이름</label>
        </div>
      </div>      

      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">email</i>
          <input id="userEmail" name="userEmail" type="text" style="cursor: auto;" />
          <input type="button" id="emailAuthBtn" name="emailAuthBtn" value="인증하기" />
          <label for="userEmail">이메일 (example@~~~.com)</label>
        </div>
      </div>
      
      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-social-person-outline prefix"></i> -->
          <i class="material-icons prefix">email</i>
          <input id="emailAuth" name="emailAuth" type="text" style="cursor: auto;" />
          <label for="userEmail">인증번호 확인</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <button type="submit" class="btn waves-effect waves-light col s12" id="joinBtn">회원가입</button>
          
        </div>
        <div class="input-field col s12">
          <p class="margin center medium-small sign-up"><a href="../main/main.do">취소</a></p>
        </div>
      </div>

    </form>
  </div>
</div>

<script src="../resources/js/jquery/jquery.min.js"></script>
<script src="../resources/js/joinForm.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
</body>
</html>