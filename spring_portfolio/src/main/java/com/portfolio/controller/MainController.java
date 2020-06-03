package com.portfolio.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/main")
public class MainController {
	
	//	index화면 
	@RequestMapping("/main.do")
	public ModelAndView main() {
		 ModelAndView mav = new ModelAndView("/main/index");
		 return mav;
	}
}
