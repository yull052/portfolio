package com.portfolio.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.portfolio.dao.UserDAO;
import com.portfolio.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;	

	@Autowired
	PasswordEncoder passwordEncoder;
	
	//	아이디 중복 체크
	@Override
	public boolean dupeId(String userId) {		
		UserVO userVO = userDAO.getId(userId);
		
		if(userVO == null) { //중복아이디 존재하지않음
			return true;
		}
		else {//  중복아이디 존재함 
			return false;
		}
	}
	
	// 회원가입  
	@Override 
	public void join(UserVO userVO, HttpSession session) { // 회원가입폼을 DB로 전달
		// session 생성 
		session.setAttribute("userName", userVO.getUserName());
		session.setAttribute("userId", userVO.getUserId());
		
		if(userVO.getUserEmail().equals("")) {// 이메일 입력값 없을 시 "-" 추가
		userVO.setUserEmail("-"); }
		  
		// 비밀번호 암호화
		userVO.setUserPwd(passwordEncoder.encode(userVO.getUserPwd()));
		userDAO.userRegister(userVO); 
	}
	
	// 정보 찾기
	@Override
	public String findInfo(UserVO userVO) {
		String result = userDAO.findInfo(userVO);
		if(userVO.getUserId()!=null && result!=null) {
			result = "pwd";
		}
		return result;
	}

	@Override
	public void chanPwd(UserVO userVO) {
		// 비밀번호 암호화
		userVO.setUserPwd(passwordEncoder.encode(userVO.getUserPwd()));
		
		// 비밀번호 전달
		userDAO.chanPwd(userVO);
	}

}
