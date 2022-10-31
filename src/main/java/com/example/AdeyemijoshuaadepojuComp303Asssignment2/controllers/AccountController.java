package com.example.AdeyemijoshuaadepojuComp303Asssignment2.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Account;
import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Customer;
import com.example.AdeyemijoshuaadepojuComp303Asssignment2.repositories.*;

@Controller
public class AccountController {
    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private AccountRepository accountRepository;

    @RequestMapping("/addaccount/{customerid}")
    public String accountAdd(@PathVariable(value = "customerid") String customerId, Model model) {

        Customer request = customerRepository.findById(Integer.parseInt(customerId))
                .orElseThrow(IllegalArgumentException::new);
        model.addAttribute("customerId", request.getCustomerId());
        return "addaccount";
    };

    @PostMapping("/addaccount/{customerid}")
    public String addAccount(@PathVariable(value = "customerid") String customerId,
            @RequestParam("accounttype") String accountType,
            Model model,
            RedirectAttributes redirect) {
        Customer customer = customerRepository.findById(Integer.parseInt(customerId))
                .orElseThrow(IllegalArgumentException::new);

        Account newAccount = new Account(234987622, Integer.parseInt(accountType), customer.getCustomerId(),
                8000.00, 1000.00);
        accountRepository.save(newAccount);
        List<Account> accountList = accountRepository.findByCustomerId(Integer.parseInt(customerId));
        redirect.addAttribute("", "").addFlashAttribute("accountList", accountList)
                .addFlashAttribute("customer",
                        customer);
        return "redirect:/account";
    }
}
