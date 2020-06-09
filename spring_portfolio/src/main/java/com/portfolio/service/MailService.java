package com.portfolio.service;

import javax.servlet.http.HttpServletRequest;

public interface MailService {

	String send(String userEmail, HttpServletRequest req);

}
