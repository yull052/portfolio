package com.portfolio.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/store")
public class StoreController {	
	@RequestMapping("/storeMain.do")
	public ModelAndView storeMain() {
		 ModelAndView mav = new ModelAndView("/store/storeMain");
		 return mav;
	}
	
	@RequestMapping("/about.do")
	public ModelAndView about() {
		 ModelAndView mav = new ModelAndView("/store/about");
		 return mav;
	}
}
