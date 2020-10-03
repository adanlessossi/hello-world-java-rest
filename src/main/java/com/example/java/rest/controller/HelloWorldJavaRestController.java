package com.example.java.rest.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloWorldJavaRestController {

    @GetMapping(path = "/hello")
    public String helloWorld() {
        return "{\"message\":\"Hello World Java v2\"}";
    }
}
