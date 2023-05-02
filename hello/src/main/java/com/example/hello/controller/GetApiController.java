package com.example.hello.controller;

import com.example.hello.dto.UserRequest;
import org.apache.catalina.User;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/get")
public class GetApiController {


    @GetMapping(path = "/hello") //http:localhost:9090/api/get/hello
    public String getHeollo(){
        return "get hello";
    }

    @RequestMapping(path="hi", method = RequestMethod.GET)
    // @RequestMapping 방식은 예전 방식이고, get post put delete 모든 요청이 다 동작한데
    //때문에 특정 메소드를 지정하려면 method = RequestMethod.GET 처럼 따로 메소드를 지정해줘야한다
    public String hi(){
        return "hi";
    }

    //http:localhost:9090/api/get/path-variable/{name}
    @GetMapping("/path-variable/{name}")
    public String pathVarialbe(@PathVariable(name = "name") String varname){
        System.out.println("PathVariable : " + varname);
        return varname;
    }

    //http://localhost:9090/api/get/query-param?user=steve&email=cksm00@naver.com&age=20
    @GetMapping(path = "query-param")
    public String queryParam(@RequestParam Map<String, String > queryParam){

        StringBuilder sb = new StringBuilder();


        queryParam.entrySet().forEach( entry -> {
            System.out.println(entry.getKey());
            System.out.println(entry.getValue());
            System.out.println("\n");

            sb.append(entry.getKey() + "=" + entry.getValue() + "\n");
        } );

        return sb.toString();
    }

    @GetMapping(path = "query-param2")
    public String queryparam2(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam int age
    ){
        System.out.println(name +","+ email + "," +age);
        return name +","+ email + "," +age;
    }


    @GetMapping(path = "query-param3")
    public String queryparam3(
            UserRequest userRequest

    ){
        System.out.println(userRequest.getName() +","+ userRequest.getEmail() + "," + userRequest.getAge());
        //return userRequest.getName() +","+ userRequest.getEmail() + "," + userRequest.getAge();
        return userRequest.toString();
    }


}
