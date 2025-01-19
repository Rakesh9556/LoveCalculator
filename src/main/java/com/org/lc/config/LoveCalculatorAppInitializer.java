package com.org.lc.config;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class LoveCalculatorAppInitializer  implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        // The below config is for, if we still want the spring config file in xml based
        // XmlWebApplicationContext webApplicationContext = new XmlWebApplicationContext();
        // webApplicationContext.setConfigLocation("classpath:my-dispatcher-servlet.xml");

        AnnotationConfigWebApplicationContext webApplicationContext = new AnnotationConfigWebApplicationContext();
        webApplicationContext.register(LoveCalculatorAppConfig.class);

        // create a dispatcher servlet object
        DispatcherServlet dispatcherServlet = new DispatcherServlet(webApplicationContext);

        // register the dispatcher servlet object with servletContext
        ServletRegistration.Dynamic myDispatcherServlet = servletContext.addServlet("myDispatcherServlet", dispatcherServlet);

        // configure load on startup and url mapping
        myDispatcherServlet.setLoadOnStartup(1);
        myDispatcherServlet.addMapping("/love-calculator.com/*");

    }
}
