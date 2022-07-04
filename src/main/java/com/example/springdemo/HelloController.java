package com.example.springdemo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
public class HelloController {


    @Value("${myarg}")
    String myarg;


    @GetMapping(path = "/hello")
    public Mono<String> sayHi() {
        return Mono.justOrEmpty("HI THERE\nMyArg: " + myarg);
    }
}
