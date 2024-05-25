package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobManagerController {

	@RequestMapping("/home")
	public String getHomepage() {
		System.err.println("Home page called");
		return "Index";
	}
	
	@RequestMapping("/")
	public String getIndex() {
		System.err.println("User Login Page");
		return "index";
	}
	
}
