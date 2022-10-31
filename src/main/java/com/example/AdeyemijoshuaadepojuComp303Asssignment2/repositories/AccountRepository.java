package com.example.AdeyemijoshuaadepojuComp303Asssignment2.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Account;

public interface AccountRepository extends JpaRepository<Account, Integer> {

    List<Account> findByCustomerId(int customerId);
}
