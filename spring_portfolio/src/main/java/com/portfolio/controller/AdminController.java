package com.portfolio.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/admin")
public class AdminController {
	// admin 메인
    @RequestMapping("/adminIndex.do")
    public ModelAndView adminIndex() {
    	ModelAndView mav = new ModelAndView("/admin/adminIndex");
		return mav;
    }
    
    // 상품 관리
    @RequestMapping("/goodsManage.do")
    public ModelAndView goodsManage() {
    	ModelAndView mav = new ModelAndView("/admin/goods/goodsManage");
		return mav;
    }
}
