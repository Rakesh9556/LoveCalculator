package com.org.lc.controller;

import com.org.lc.api.LcDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LCAppController {

    @RequestMapping("/")
    public String showHomePage() {
        return "Home";
    }

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
    @RequestMapping("/findLove")
    public String findLove(LcDto lcDto, Model model) {

        // Set the dto object into model object
        model.addAttribute("user", lcDto);


        return "LoveResult";
    }
}
