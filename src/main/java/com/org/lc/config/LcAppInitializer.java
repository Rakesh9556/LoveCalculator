package com.org.lc.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

// Approach II:
// This is a second way to configure Dispatcher Servlet
// Here spring will create dispatcher servlet for us
public class LcAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{LoveCalculatorAppConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/love-calculator.com/*"};
    }
}
