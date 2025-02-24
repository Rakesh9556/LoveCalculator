package com.org.lc.controller;

import com.org.lc.api.UserDto;
import com.org.lc.api.UserRegistrationDto;
import com.org.lc.dao.UserDao;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class LCAppController {

    /*
    // We can rewrite the code in simple using @ModelAttribute
    @RequestMapping("/")
    public String showHomePage(Model model) {

        // Create the userDto object to initialize the non-static field (yourName, crushName) field
        UserDto userDto = new UserDto();

        // Setting the userDto object into model object
        model.addAttribute("user", userDto);

        return "Home";
    }
    */


    /*
    // Type 1:
    @RequestMapping("/findLove")
    public String findLove(HttpServletRequest req, Model model) {

        // Retrieve user data from the view
        String yourName = req.getParameter("yourName");
        String crushName = req.getParameter("crushName");

        // Set the data into model object
        model.addAttribute("yourName", yourName);
        model.addAttribute("crushName", crushName);

        return "LoveResult";
    }
    */

    // @RequestParam annotation will automatically bind the respective value from the view page
    // Note: param name should match to the field name of view page
    // public String findLove(@RequestParam String yourName, @RequestParam String crushName, Model model) {

    /*
    Else we can give custom param name: @RequestParam("actualParamName") String customParamName
    @RequestMapping("/findLove")
    public String findLove(@RequestParam("yourName") String user, @RequestParam("crushName") String crush, Model model) {


        // Set the data into model object
        model.addAttribute("user", user);
        model.addAttribute("crush", crush);

        return "LoveResult";
    }
    */

    // The above approach is still not reliable if we have 100 param then we need to write @RequestParam for each parameter
    // Also need to add those param to model object
    // So we will use DTO(Data Transfer Object) for directly binding the view page data with the model

    /*
    // We can rewrite the code in simple using @ModelAttribute
    @RequestMapping("/findLove")
    public String findLove(UserDto userDto, Model model) {

        // Set the dto object into model object
        model.addAttribute("user", userDto);


        return "LoveResult";
    }
    */

    // Using @ModelAttribute
    @RequestMapping("/home")
    public String showHomePage(@ModelAttribute("user") UserDto userDto) {
        return "Home";
    }

    // using @ModelAttribute
    @RequestMapping("/findLove")
    // Validation will be triggered here
    // As we this route is triggered when user submit the form of the home page
    // So use @Valid -> to add validation
    // We can store the validation result using BindingResult class

    public String findLove(@Valid @ModelAttribute("user") UserDto userDto, BindingResult result) {
        if (result.hasErrors()) {

            // Printing all errors
            List<ObjectError> errors = result.getAllErrors();
            for(ObjectError error : errors) {
                System.out.println(error.getDefaultMessage());
            }

            return "Home";
        }
        return "LoveResult";
    }


    @RequestMapping("/")
    public String showLoginPage(@ModelAttribute("userInfo") UserRegistrationDto userInfoDto) {
        return "Login";
    }

}
