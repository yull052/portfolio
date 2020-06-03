package com.portfolio.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface LoginService {

	public boolean login(Map<String, String> map, HttpSession session);

	public void logout(HttpSession session);

	public String kakaoLogin(String code, HttpSession session);

}
