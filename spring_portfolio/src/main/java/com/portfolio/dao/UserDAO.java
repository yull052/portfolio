package com.portfolio.dao;


import java.util.Map;

import com.portfolio.vo.UserVO;

public interface UserDAO {

	public UserVO getId(String userId);

	public void userRegister(UserVO userVO);

	public String findInfo(UserVO userVO);

	public void chanPwd(UserVO userVO);

}
