package com.portfolio.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.portfolio.dao.UserDAO;
import com.portfolio.vo.UserVO;


@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	KakaoAPI kakao;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	// 로그인
	@Override
	public boolean login(Map<String, String> map, HttpSession session) {
		// 아이디 값의 정보를 가져와 비밀번호 비교
		UserVO userVO = userDAO.getId(map.get("userId"));
    	String rawPwd = map.get("userPwd");
    	
    	if(passwordEncoder.matches(rawPwd, userVO.getUserPwd())) {// 비밀번호 암호화 값 비교
    		session.setAttribute("userId", userVO.getUserId());
     		session.setAttribute("userName", userVO.getUserName());
     		return true;
        }else {
     		return false;
        }
	}
	
	// 카카오 로그인
	@Override
	public String kakaoLogin(String code, HttpSession session) {
		if(session.getAttribute("userId")==null) {
	    	 String access_Token = kakao.getAccessToken(code);//API 토큰 받아오기
	    	 HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);//유저 정보
	    	 System.out.println("login Controller : " + userInfo);
	    	    
	    	 //	클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    	 if (userInfo.get("email") != null) {
    	        session.setAttribute("userId", userInfo.get("email"));
    	        session.setAttribute("userName", userInfo.get("nickname"));
    	        session.setAttribute("access_Token", access_Token);
    	        return "/store/storeMain";
    	    }else {
    	    	return "/login/loginForm";
    	    }
	   	}else {
	   		return "/login/loginForm";
	   	}
	}
	
	// 로그아웃
	@Override
	public void logout(HttpSession session) {
		if(session.getAttribute("access_Token")!=null) {
    		kakao.kakaoLogout((String)session.getAttribute("access_Token"));
    	}
        session.removeAttribute("access_Token");
        session.removeAttribute("userId");
        session.removeAttribute("userName");
	}




}
