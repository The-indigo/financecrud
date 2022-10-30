package com.example.AdeyemijoshuaadepojuComp303Asssignment2.models;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "account")
public class Account {
    @Id
    @Column(name = "accountnumber")
    private int accountNumber;
    @Column(name = "accounttypecode")
    private int accountTypeCode;
    @Column(name = "customerid")
    private int customerId;
    @Column(name = "balance")
    private double balance;
    @Column(name = "overdraftlimit")
    private double overdraftLimit;

    public Account() {
    }

    public Account(int accountNumber, int accountTypeCode, int customerId, double balance, double overdraftLimit) {
        this.accountNumber = accountNumber;
        this.accountTypeCode = accountTypeCode;
        this.customerId = customerId;
        this.balance = balance;
        this.overdraftLimit = overdraftLimit;
    }

    public int getAccountNumber() {
        return this.accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public int getAccountTypeCode() {
        return this.accountTypeCode;
    }

    public void setAccountTypeCode(int accountTypeCode) {
        this.accountTypeCode = accountTypeCode;
    }

    public int getCustomerId() {
        return this.customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public double getBalance() {
        return this.balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getOverdraftLimit() {
        return this.overdraftLimit;
    }

    public void setOverdraftLimit(double overdraftLimit) {
        this.overdraftLimit = overdraftLimit;
    }

}
