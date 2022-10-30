package com.example.AdeyemijoshuaadepojuComp303Asssignment2.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Customer;
import com.example.AdeyemijoshuaadepojuComp303Asssignment2.repositories.*;

@Controller
public class AccountController {
    @Autowired
    private CustomerRepository customerRepository;

    @RequestMapping("/addaccount/{customerid}")
    public String accountAdd(@PathVariable(value = "customerid") String customerId, Model model) {

        Customer request = customerRepository.findById(Integer.parseInt(customerId))
                .orElseThrow(IllegalArgumentException::new);
        model.addAttribute("customerId", request.getCustomerId());
        return "addaccount";
    }
}
