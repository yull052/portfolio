$(function(){
	// url 에서 parameter 추출
	function getParam(sname) {
	    var params = location.search.substr(location.search.indexOf("?") + 1);
	    var sval = "";

	    params = params.split("&");

	    for (var i = 0; i < params.length; i++) {
	        temp = params[i].split("=");
	        if ([temp[0]] == sname) { sval = temp[1]; }
	    }
	    return sval;
	}
	
	var current = getParam('current');
	// 해당페이지 nav로 확인가능
	$('#'+current).attr('class', 'nav-item active');
});
