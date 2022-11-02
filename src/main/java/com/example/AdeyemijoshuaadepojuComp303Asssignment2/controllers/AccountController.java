package com.example.AdeyemijoshuaadepojuComp303Asssignment2.controllers;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
                // generate a random number for the account number
                int m = (int) Math.pow(10, 9);
                int randomNumber = m + new Random().nextInt(9 * m);
                double balance;
                double overdraftLimit;
                if (Integer.parseInt(accountType) == 1) {
                        balance = 4000.00;
                        overdraftLimit = 6000.00;
                } else if (Integer.parseInt(accountType) == 2) {
                        balance = 6000.00;
                        overdraftLimit = 8000.00;
                } else {
                        balance = 9000.00;
                        overdraftLimit = 12000.00;
                }

                Account newAccount = new Account(randomNumber, Integer.parseInt(accountType), customer.getCustomerId(),
                                balance, overdraftLimit);
                accountRepository.save(newAccount);
                List<Account> accountList = accountRepository.findByCustomerId(Integer.parseInt(customerId));
                redirect.addAttribute("", "").addFlashAttribute("accountList", accountList)
                                .addFlashAttribute("customer",
                                                customer);
                return "redirect:/account";
        }

        @GetMapping("/edit/{accountNumber}")
        public String toEditAccount(@PathVariable(value = "accountNumber") String accountNumber,
                        Model model) {
                Account account = accountRepository.findByAccountNumber(Integer.parseInt(accountNumber));
                model.addAttribute("account", account);
                return "addaccount";
        }

        @PostMapping("/editaccount/{accountNumber}")
        public String editAccount(@PathVariable(value = "accountNumber") String accountNumber,
                        @RequestParam("accounttype") String accountType,
                        @RequestParam("balance") String balance,
                        @RequestParam("overdraft") String overdraft,
                        @RequestParam("customerid") String customerId,
                        Model model,
                        RedirectAttributes redirect) {
                Account editedAccount = new Account(Integer.parseInt(accountNumber),
                                Integer.parseInt(accountType), Integer.parseInt(customerId),
                                Double.parseDouble(balance),
                                Double.parseDouble(overdraft));
                accountRepository.save(editedAccount);
                Customer customer = customerRepository.findById(Integer.parseInt(customerId))
                                .orElseThrow(IllegalArgumentException::new);
                List<Account> accountList = accountRepository.findByCustomerId(Integer.parseInt(customerId));
                redirect.addAttribute("", "").addFlashAttribute("accountList", accountList)
                                .addFlashAttribute("customer",
                                                customer);
                return "redirect:/account";
        }

        @PostMapping("/deleteaccount/{accountNumber}")
        public String deleteAccount(@PathVariable(value = "accountNumber") String accountNumber,
                        Model model,
                        RedirectAttributes redirect) {
                Account account = accountRepository.findByAccountNumber(Integer.parseInt(accountNumber));
                if (account != null) {
                        accountRepository.deleteById(Integer.parseInt(accountNumber));
                        Customer customer = customerRepository.findById(account.getCustomerId())
                                        .orElseThrow(IllegalArgumentException::new);

                        List<Account> accountList = accountRepository.findByCustomerId(customer.getCustomerId());

                        redirect.addAttribute("", "").addFlashAttribute("accountList", accountList)
                                        .addFlashAttribute("customer",
                                                        customer);
                        return "redirect:/account";
                } else {
                        return "index";
                }

        }
}
