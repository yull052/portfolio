package com.portfolio.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.service.UserService;
import com.portfolio.vo.UserVO;



@RestController
@RequestMapping("/user")
public class UserController {
	@Inject
	UserService service;
	
	//	회원가입 폼
	@RequestMapping("/joinForm.do")
	public ModelAndView joinForm() {
		ModelAndView mav = new ModelAndView("/user/joinForm");
		return mav;
	}
	
	//	아이디 중복 체크
	@RequestMapping("/dupeId.do")
	public boolean dupeId(@RequestParam String userId) {
		return  service.dupeId(userId);
	}
	
    // 회원가입 
	@RequestMapping("/join.do") 
	public ModelAndView join(@ModelAttribute UserVO userVO, HttpSession session) {
		
		service.join(userVO, session);
  
	  	ModelAndView mav = new ModelAndView("/store/storeMain");
	  	return mav; 
  	}
	
	// 정보 찾기 폼
	@RequestMapping("/findInfoForm.do")
	public ModelAndView findInfoForm() {
		ModelAndView mav = new ModelAndView("/user/findInfoForm");
	  	return mav; 
	}
	
	//정보 찾기
	@RequestMapping("/findInfo.do")
	public String findInfo(@ModelAttribute UserVO userVO) {
		String result = service.findInfo(userVO);
		return result;
	}
	
	//비밀번호 변경 폼
	@RequestMapping("/chanPwdForm.do")
	public ModelAndView chanPwdForm(@RequestParam String userId) {
		ModelAndView mav = new ModelAndView(); 
		mav.addObject("userId", userId);
		mav.setViewName("/user/chanPwdForm");
	  	return mav; 
	}
	
	//	비밀번호 변경
	@RequestMapping("/chanPwd.do")
	public ModelAndView chanPwd(@ModelAttribute UserVO userVO) {
		service.chanPwd(userVO);
		ModelAndView mav = new ModelAndView("/user/joinForm");
		return mav;
	}
	
}
