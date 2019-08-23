package com.easy.bank.service;

import org.springframework.stereotype.Component;

import com.easy.bank.model.Customer_master;

@Component
public interface CustomerService {
	public String verifyLogin(Customer_master cmaster) throws Exception;
}
