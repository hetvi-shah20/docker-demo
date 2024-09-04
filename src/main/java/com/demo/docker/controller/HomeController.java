package com.demo.docker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/index")
    public String sayHello(){
        System.out.println("Hello from home controller!!!");
        return "Hello Docker!!";
    }
}
