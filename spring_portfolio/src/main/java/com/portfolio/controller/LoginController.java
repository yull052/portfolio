package com.portfolio.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.service.LoginService;

@RestController
@RequestMapping("/login")
public class LoginController {
	@Autowired
	LoginService service;
	
	// 로그인 폼
    @RequestMapping("/loginForm.do")
    public ModelAndView loginForm() {
    	ModelAndView mav = new ModelAndView("/login/loginForm");
		return mav;
    }
    
    // 로그인
    @RequestMapping("/login.do")
    public boolean login(@RequestParam Map<String,String> map , HttpSession session) {
    	boolean result = service.login(map, session);
    	
		return result;
    }
    
    // 카카오 로그인
    @RequestMapping("/kakaoLogin.do")
    public ModelAndView kakaoLogin(@RequestParam(value="code", required=false) String code, HttpSession session) {
    	String url = service.kakaoLogin(code, session);
    	
    	ModelAndView mav = new ModelAndView(url);
		return mav;
    }
    
    
    // 로그아웃
    @RequestMapping("/logout.do")
    public ModelAndView logout(HttpSession session) {
    	service.logout(session);
    	ModelAndView mav = new ModelAndView("/main/index");
		return mav;
    }
}
