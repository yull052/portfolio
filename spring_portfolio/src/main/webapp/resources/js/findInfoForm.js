$(function(){
	//	id찾기, pwd찾기 구분
	var state;
	$('.findDiv').hide();
	
	$('.findBtn').on('click',function(){
		$('.btnDiv').hide();
		$('.findDiv').show();
		
		if($(this).attr('id')=='idBtn'){
			state='id';
			var html = '<input type="text" id="userName" name="userName" placeholder="이름 입력">';
			$('#text1L').append('이  름');
		}
		if($(this).attr('id')=='pwdBtn'){
			state='pwd';
			var html = '<input type="text" id="userId" name="userId" placeholder="아이디 입력">';
			$('#text1L').append('아이디');
		}
		var html2 = '<input type="text" id="userEmail" name="userEmail" placeholder="ex) example@~~~.com">';
		$('.text1').append(html);
		$('.text2').append(html2);	
		$('#text2L').append('이메일');
	});

	
	var nameRegex = /^[가-힣]{2,5}$/;
	var emailRegex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var idRegex = /^[a-zA-Z]{1}[a-zA-Z0-9_]{4,11}$/;
	
	//	유효성 검사
	$('#findInfo').on('click',function(){
		if(state=='id'){ // 아이디 찾기 시
			if(($('#userName').val()!='')&&($('#userEmail').val()!='')){
				if(nameRegex.test($('#userName'))==true){
					if(emailRegex.test()==true){
						ajaxFn();
					}else{
						alert('이메일 형식에 맞춰주세요');
					}
				}else{
					alert('2~5자 한글만 입력해주세요');
				}
			}else{
				alert('이름, 이메일을 입력해주세요');
			}		
		}
		if(state=='pwd'){ // 비밀번호 찾기 시
			if(($('#userId').val()!='')&&($('#userEmail').val()!='')){			
				if(idRegex.test($('#userId').val())==true) {
					if(emailRegex.test($('#userEmail').val())==true){
						ajaxFn();
					}else{
						alert('이메일 형식에 맞춰주세요');
					}
				}else{
					alert('아이디는 영문자로 시작 (5~12)');
				}
			}else{
				alert('아이디, 휴대폰을 입력해주세요');
			}

		}
	});
	
	//	ajax
	function ajaxFn(){
		$.ajax({
			type : 'post',
			url  : '../user/findInfo.do',
			data : {
				'userName' : $('#userName').val(),
				'userId' : $('#userId').val(),
				'userEmail' : $('#userEmail').val()
				},
			dataType : 'text',
			success : function(data){
				if(data == ''){
					alert('일치하는 정보가 없습니다');	
				}else{
					if(data == 'pwd'){
						location.href = '../user/chanPwdForm.do?userId='+$('#userId').val();
					}else{
						alert('회원님의 아이디는 : '+ data + '입니다');
						location.href = '../login/loginForm.do';
					}
				}
			}
		});
	}
	
	// 취소 버튼
	$('#cancelBtn').on('click',function(){
		location.href='../login/loginForm.do';
	});
});
