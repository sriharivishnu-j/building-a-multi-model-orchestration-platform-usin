package com.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BusinessLogicService {

    @GetMapping("/process")
    public String process() {
        return "Business logic processed successfully";
    }
}