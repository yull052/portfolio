package com.portfolio.dao;




import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import com.portfolio.vo.UserVO;


@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SqlSession sqlSession;
	

	//	아이디 값
	@Override
	public UserVO getId(String userId) {
		return sqlSession.selectOne("userSQL.getId", userId);
	}
	
	// 회원정보 등록	  
	@Override 
	public void userRegister(UserVO userVO) {
		sqlSession.insert("userSQL.userRegister", userVO); 
	}
		
	// 정보찾기
	@Override
	public String findInfo(UserVO userVO) {
		return sqlSession.selectOne("userSQL.findInfo", userVO);
	}
	
	//	비밀번호 변경
	@Override
	public void chanPwd(UserVO userVO) {
		sqlSession.update("userSQL.chanPwd", userVO);
	}
	




}
