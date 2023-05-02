package com.example.hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //해당 Class는 Rest API 처리하는 controller
@RequestMapping("/api") //RequestMapping은 URI를 지정해주는 Annotation
public class ApiController {

    @GetMapping("/hello") //해당 주소가 http://localhost:9090/api/hello
    public String hello(){
        return  "hello spring boot!";
    }


}
