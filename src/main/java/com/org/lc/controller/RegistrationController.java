package com.org.lc.controller;

import com.org.lc.api.UserRegistrationDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegistrationController {

    @RequestMapping("/register")
    public String showRegistrationPage(@ModelAttribute("userRegDto") UserRegistrationDto userRegDto) {
        userRegDto.setFullName("Rakesh G");
        return "Register";
    }

    // show user registration data
    @RequestMapping("/register-success")
    public String processUserRegistration(@ModelAttribute("userInfo") UserRegistrationDto userRegDto) {
        return "RegistrationSuccess";
    }
}
