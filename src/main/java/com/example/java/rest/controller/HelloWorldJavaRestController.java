package com.example.java.rest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloWorldJavaRestController {

    @GetMapping(path = "/")
    public String helloWorld() {
        return "{\"message\":\"Hello World Java v1\"}";
    }
}
