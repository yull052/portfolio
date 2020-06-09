$(function(){
	$('#loginBtn').on('click',function(){
		if(($('#userId').val()!='')&&($('#userPwd').val()!='')){
			$.ajax({
				type : 'post',
				url  : '../login/login.do',
				data : {
					'userId' : $('#userId').val(),
					'userPwd' : $('#userPwd').val()
					},
				dataType : 'text',
				success : function(data){
					if(data == 'false'){
						alert('아이디 또는 비밀번호 오류입니다');
						location.href='../login/loginForm.do';
					}
					else{
						location.href='../store/storeMain.do?current=home';
					}
				}
			});
		}else{
			alert('아이디, 비밀번호를 입력해 주세요');
		}
	
	});
	$('#joinBtn').on('click',function(){
		location.href='../user/joinForm.do';
	});
	
	$('#findInfoBtn').on('click',function(){
		location.href='../user/findInfoForm.do';
	});
});