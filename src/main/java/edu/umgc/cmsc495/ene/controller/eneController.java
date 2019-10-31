package edu.umgc.cmsc495.ene.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class eneController {
	Logger logger = LoggerFactory.getLogger(eneController.class);
	
	@Controller
	public class TestController {
	    @GetMapping("/home")
	    public String  jspPage() {
	       return "home";
	    }
	}
	
	@Controller
	public class comingSoon {
	    @GetMapping("/")
	    public String  jspPage() {
	       return "comingSoon";
	    }
	}

}
