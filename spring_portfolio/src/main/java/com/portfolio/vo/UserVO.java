package com.portfolio.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class UserVO {
	private String userId; 
	private String userPwd;
	private String userName;
	private String userPhone;
	private String userEmail;
}
