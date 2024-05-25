package com.project;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.project.service.UserService;

@Configuration
public class Config {

	@Bean
	public UserService getObject() {
		return new UserService();
	}
	
	public static String getHostName() {
		return "localhost:8080";
	}
}
