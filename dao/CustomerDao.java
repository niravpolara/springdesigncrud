package com.easy.bank.service.dao;

import org.springframework.stereotype.Component;

import com.easy.bank.model.Customer_master;

@Component
public interface CustomerDao {

	public String verifyLogin(Customer_master cmaster) throws Exception;

}
