package com.easy.bank.service.dao;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.constraints.Size;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.easy.bank.model.Customer_master;
import com.easy.bank.service.CustomerService;
import com.easy.bank.service.CustomerServiceImpl;

@SuppressWarnings({"unchecked","unused","rawtypes"})
@Component
@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionfactory;

	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}

	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	@Override
	public String verifyLogin(Customer_master cmaster) throws Exception {
		String msg="";
		Session session=null;
		List<Customer_master> list=null;
		try
		{
			session=this.getSessionfactory().openSession();
			list=session.createSQLQuery("select * from EMP_REGISTRATION  where user_id='"+cmaster.getUser_id()+"' and password='"+cmaster.getPassword()+"'").list();
			
			if(list!=null && !list.isEmpty())
			{
					msg="Y";
					
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
		
		return msg;
	}
	
	
	
	
}
