package com.example.AdeyemijoshuaadepojuComp303Asssignment2.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name = "accounttype")
public class AccountType {
    @Id
    @Column(name = "accounttypecode")
    private int accountTypeCode;
    @Column(name = "accounttypename")
    private int accountTypeName;
    @Column(name = "accounttypedesc")
    private int accountTypeDesc;

    public AccountType() {
    }

    public AccountType(int accountTypeCode, int accountTypeName, int accountTypeDesc) {
        this.accountTypeCode = accountTypeCode;
        this.accountTypeName = accountTypeName;
        this.accountTypeDesc = accountTypeDesc;
    }

    public int getAccountTypeCode() {
        return this.accountTypeCode;
    }

    public void setAccountTypeCode(int accountTypeCode) {
        this.accountTypeCode = accountTypeCode;
    }

    public int getAccountTypeName() {
        return this.accountTypeName;
    }

    public void setAccountTypeName(int accountTypeName) {
        this.accountTypeName = accountTypeName;
    }

    public int getAccountTypeDesc() {
        return this.accountTypeDesc;
    }

    public void setAccountTypeDesc(int accountTypeDesc) {
        this.accountTypeDesc = accountTypeDesc;
    }

}
