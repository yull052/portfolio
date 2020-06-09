$(function(){
	// 코드 url 가려주기 위함
	var url = '/portfolioStore/login/kakaoLogin.do';
	var url2 = '/portfolioStore/user/join.do';
	
	var name = window.location.pathname;
	if(name==url || name==url2){
		location.href="../store/storeMain.do?current=home";
	}

});