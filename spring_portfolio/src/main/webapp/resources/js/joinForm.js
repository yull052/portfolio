$(function(){
	//	페이지 로드 시 유효성 검사 실행 위함
	jQuery(function(){
	   jQuery('#joinBtn').click();
	});
	
	//	validation 아이디 체크 정규식
	$.validator.addMethod("idRegex",  function( value, element ) {
		return this.optional(element) ||  /^[a-zA-Z]{1}[a-zA-Z0-9_]{4,11}$/.test(value);
	});
	
	//	validation 비밀번호 체크 정규식
	$.validator.addMethod("pwdRegex",  function( value, element ) {
		return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);
	});
	
	 // validation 이름 체크 정규식
	$.validator.addMethod("nameRegex",  function( value, element ) {
		return this.optional(element) ||   /^[가-힣]{2,5}$/.test(value);
	});
	
	//	유효성 검사
    $(".joinForm").validate({
    	// 에러 메세지 위치
    	errorElement: "span",
    	    errorPlacement: function(error, element) {
    	        error.insertAfter(element);
    	    },
        //	규칙
        rules: {
            userId: {
                required : true,
                rangelength : [5, 12],
                idRegex : true,
                remote:{
                	url : "../user/dupeId.do",
                	type : "post"
                }
            },
            userPwd: {
                required : true,
                pwdRegex : true,
                rangelength :[8, 15]
            },
            userRePwd: {
                required : true,
                equalTo : userPwd
            },
            userName: {
            	required : true,
            	nameRegex : true
            },
            userEmail: {
            	required : true,
            	email : true
            },
            emailAuth: {
            	required : true,
            	equalTo : authKey
            } 
        },
        //	규칙체크 실패시 출력될 메시지
        messages : {
        	userId: {
                required : "영문자로 시작하는 5~12자",
                rangelength : "{0}~{1}자 사이로 입력해주세요",
                idRegex : "영문자로 시작하며, 영어,숫자만 입력해주세요",
                remote : "존재하는 아이디입니다"
            },
            userPwd: {
                required : "영문, 숫자, 특수문자 포함 8~15자",
                rangelength :"{0}~{1}자 사이로 입력해주세요",
                pwdRegex : "영문, 숫자, 특수문자를 포함해주세요"
            },
            userRePwd: {
                required : "필수로 입력해주세요",
                equalTo : "비밀번호가 일치하지 않습니다"
            },
            userName: {
            	required : "필수로 입력해주세요",
            	nameRegex : "2~5자 사이 한글만 입력해주세요",
            },
            userEmail: {
            	required : "필수로 입력해주세요",
            	email : "메일규칙에 어긋납니다",	
            },
            emailAuth: {
            	required : "필수로 입력해주세요",
            	equalTo : "인증번호가 맞지 않습니다"
            } 
        }
    });//validate
    

	// 이메일 체크 정규식
	var emailRegex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	// 이메일 인증 
	$('#emailAuthBtn').on('click',function(){
		if(emailRegex.test($('#userEmail').val())!=false){
			$.ajax({
				type : 'post',
				url  : '../user/emailAuth.do',
				data : {
					'userEmail' : $('#userEmail').val()
					},
				dataType : 'text',
				success : function(data){
					$('#authKey').val(data);
				}
			});
		}else{
			alert('이메일을 정확히 입력해주세요');
		}
	});
	
})