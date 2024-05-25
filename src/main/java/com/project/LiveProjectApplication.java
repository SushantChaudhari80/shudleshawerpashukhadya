package com.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;


@SpringBootApplication
@EntityScan("com.project.model")
public class LiveProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(LiveProjectApplication.class, args);
	}

}
