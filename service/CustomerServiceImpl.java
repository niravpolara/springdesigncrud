package com.easy.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.easy.bank.model.Customer_master;
import com.easy.bank.service.dao.CustomerDao;



@SuppressWarnings({"unchecked","unused","rawtypes"})
@Component
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao customerdao;

	public CustomerDao getCustomerdao() {
		return customerdao;
	}

	public void setCustomerdao(CustomerDao customerdao) {
		this.customerdao = customerdao;
	}

	@Override
	public String verifyLogin(Customer_master cmaster) throws Exception {
		
		return customerdao.verifyLogin(cmaster);
	}
	
	
}
