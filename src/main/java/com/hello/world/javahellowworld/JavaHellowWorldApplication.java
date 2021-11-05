package com.hello.world.javahellowworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class JavaHellowWorldApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaHellowWorldApplication.class, args);
	}
	
	@RequestMapping(value="/hello", method = RequestMethod.GET)
	public String getHello() {
		System.out.println("Hello World!");
		return "Hello World";
	}

}
