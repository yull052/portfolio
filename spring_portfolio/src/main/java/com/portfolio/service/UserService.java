package com.portfolio.service;

import javax.servlet.http.HttpSession;

import com.portfolio.vo.UserVO;

public interface UserService {

	boolean dupeId(String userId);

	 void join(UserVO userVO, HttpSession session);

	String findInfo(UserVO userVO);

	void chanPwd(UserVO userVO);

	void emailAuth(String userEmail); 

}
