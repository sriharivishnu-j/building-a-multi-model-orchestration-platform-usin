package com.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BusinessLogicController {

    @GetMapping("/process")
    public String processBusinessLogic() {
        // Business logic processing
        return "Business logic processed successfully";
    }
}