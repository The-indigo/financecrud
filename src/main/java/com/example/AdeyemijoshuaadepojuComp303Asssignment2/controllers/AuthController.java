package com.example.AdeyemijoshuaadepojuComp303Asssignment2.controllers;

// import java.util.ArrayList;
import java.util.List;
// import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Account;
import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Customer;
import com.example.AdeyemijoshuaadepojuComp303Asssignment2.repositories.*;

@Controller
public class AuthController {
    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private AccountRepository accountRepository;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    // @RequestMapping("/error")
    // public String toerrorPage() {
    // return "error";
    // }

    @RequestMapping("/account")
    public String toAccount() {
        return "account";
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
            @RequestParam("password") String password, Model model) {
        Customer request = customerRepository.findByEmail(email);

        if (request != null && request.getPassword().equals(password)) {
            List<Account> accountList = accountRepository.findByCustomerId(request.getCustomerId());
            // List<String> numbersStringList = new ArrayList<String>();
            // accountList.forEach((Account accountNumber) -> {
            // numbersStringList.add(String.valueOf(accountNumber.getAccountNumber()));
            // });
            model.addAttribute("customer", request);
            model.addAttribute("accountList", accountList);
            // model.addAttribute("accountNumberString", numbersStringList);
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

    // get
    @RequestMapping(value = "/editprofile/{customerid}", method = RequestMethod.GET)
    public String toEdit(@PathVariable(value = "customerid") String customerId, Model model) {
        System.out.println(customerId);
        Customer request = customerRepository.findById(Integer.parseInt(customerId))
                .orElseThrow(IllegalArgumentException::new);
        model.addAttribute("customer", request);
        return "editprofile";
    }

    // post
    @RequestMapping(value = "/editprofile/{customerid}", method = RequestMethod.POST)
    public String editprofile(@RequestParam("email") String email, @RequestParam("address") String address,
            @RequestParam("city") String city,
            @RequestParam("postalcode") String postalcode, @RequestParam("phone") String phone,
            @PathVariable(value = "customerid") String customerId,
            Model model, RedirectAttributes redirect) {
        Customer request = customerRepository.findById(Integer.parseInt(
                customerId))
                .orElseThrow(IllegalArgumentException::new);
        Customer customer = new Customer(Integer.parseInt(customerId), request.getUsername(), request.getPassword(),
                request.getFirstname(),
                request.getLastname(),
                address,
                city, postalcode, phone, email);
        Customer newCustomer = customerRepository.save(customer);
        redirect.addAttribute("customer", newCustomer).addFlashAttribute("customer", newCustomer);
        return "redirect:/account";
    }

}
