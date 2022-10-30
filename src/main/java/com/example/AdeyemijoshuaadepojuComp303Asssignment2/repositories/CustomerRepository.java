package com.example.AdeyemijoshuaadepojuComp303Asssignment2.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.AdeyemijoshuaadepojuComp303Asssignment2.models.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    // This is where you write your queries.
    // This repository extends Jparepository and already provides
    // basic queries out of the box
    public Customer findByEmail(String email);
}
