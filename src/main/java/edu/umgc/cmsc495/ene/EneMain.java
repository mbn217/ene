package edu.umgc.cmsc495.ene;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class EneMain extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(EneMain.class, args);
	}

}
