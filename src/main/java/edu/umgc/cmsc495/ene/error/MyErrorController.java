package edu.umgc.cmsc495.ene.error;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyErrorController implements ErrorController  {
 
    @RequestMapping("/error")
    public String handleError() {
        //do something like logging
        return "error/404";
    }
 
    @Override
    public String getErrorPath() {
        return "error/404";
    }
}
