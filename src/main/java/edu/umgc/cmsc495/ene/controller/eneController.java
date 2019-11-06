package edu.umgc.cmsc495.ene.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class eneController {
	Logger logger = LoggerFactory.getLogger(eneController.class);
	
	@Controller
	public class sell {
	    @GetMapping("/sellBooks")
	    public String  jspPage() {
	       return "sellBooks";
	    }
	}
	
	@Controller
	public class eneHome {
	    @GetMapping("/")
	    public String  jspPage() {
	       return "eneHome";
	    }
	}
	
	@Controller
	public class loginRegister {
	    @GetMapping("/login")
	    public String  jspPage() {
	       return "login_register";
	    }
	}

	@Controller
	public class howItWorks {
	    @GetMapping("/howitworks")
	    public String  jspPage() {
	       return "howItWorks";
	    }
	}
	
	@Controller
	public class support {
	    @GetMapping("/support")
	    public String  jspPage() {
	       return "support";
	    }
	}
	@Controller
	public class buy {
	    @GetMapping("/buyBooks")
	    public String  jspPage() {
	       return "buyBooks";
	    }
	}
}
