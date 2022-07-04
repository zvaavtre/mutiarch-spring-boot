package com.example.springdemo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
public class HealthCheckController {

    @RequestMapping(method = {RequestMethod.GET, RequestMethod.HEAD}, path = "/healthcheck")
    public ResponseEntity<Mono<Void>> healthCheck() {
        return ResponseEntity.ok().build();
    }
}
