package com.learn.jenkins_docker.Controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testController {

    @GetMapping("/")
    public String test(){
        return "hello docker jenkins";
    }
}