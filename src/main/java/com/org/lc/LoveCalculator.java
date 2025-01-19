package com.org.lc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoveCalculator {

    @RequestMapping("/home")
    public String getHomePage() {
        return "Home";
    }

}
