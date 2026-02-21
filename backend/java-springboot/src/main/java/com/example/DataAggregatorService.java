package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DataAggregatorService {

    public static void main(String[] args) {
        SpringApplication.run(DataAggregatorService.class, args);
    }

    @GetMapping("/aggregate")
    public String aggregate() {
        return "Data Aggregated";
    }
}