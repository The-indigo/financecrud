package com.example.AdeyemijoshuaadepojuComp303Asssignment2.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Customer;
import com.example.AdeyemijoshuaadepojuComp303Asssignment2.repositories.*;

@Controller
public class AuthController {
    @Autowired
    private CustomerRepository customerRepository;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/login")
    public String toLogin() {
        return "index";
    }

    @RequestMapping("/account")
    public String toAccount() {
        return "account";
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
            @RequestParam("password") String password, Model model) {
        Customer request = customerRepository.findByEmail(email);

        if (request != null && request.getPassword().equals(password)) {
            model.addAttribute("customer", request);
            return "account";

        } else {
            return "login";
        }

    }

    @RequestMapping("/signup")
    public String toSignup() {
        return "register";
    }

    @PostMapping("/register")
    public String register(@RequestParam("username") String username,
            @RequestParam("email") String email, @RequestParam("password") String password,
            @RequestParam("address") String address, @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname, @RequestParam("city") String city,
            @RequestParam("postalcode") String postalcode, @RequestParam("phone") String phone,
            @RequestParam("repassword") String repassword) {
        Customer request = customerRepository.findByEmail(email);
        if (request == null && repassword.equals(password)) {
            Customer customer = new Customer(username, password, firstname, lastname, address,
                    city, postalcode, phone, email);
            customerRepository.save(customer);
            return "login";
        } else {
            return "register";

        }

    }

    @RequestMapping("/editprofile/{customerid}")
    public String toEdit(@PathVariable(value = "customerid") String customerId, Model model) {
        System.out.println(customerId);
        Customer request = customerRepository.findById(Integer.parseInt(customerId))
                .orElseThrow(IllegalArgumentException::new);
        model.addAttribute("customer", request);
        return "editprofile";
    }

    @PostMapping("/editprofile/{customerid}")
    public String editprofile(@RequestParam("email") String email, @RequestParam("address") String address,
            @RequestParam("city") String city,
            @RequestParam("postalcode") String postalcode, @RequestParam("phone") String phone,
            @PathVariable(value = "customerid") String customerId,
            Model model) {
        Customer request = customerRepository.findById(Integer.parseInt(
                customerId))
                .orElseThrow(IllegalArgumentException::new);
        Customer customer = new Customer(Integer.parseInt(customerId), request.getUsername(), request.getPassword(),
                request.getFirstname(),
                request.getLastname(),
                address,
                city, postalcode, phone, email);
        Customer newCustomer = customerRepository.save(customer);
        model.addAttribute("customer", newCustomer);
        return "account";
    }

}
