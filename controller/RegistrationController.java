package com.easy.bank.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.easy.bank.DTO.CustomerDTO;
import com.easy.bank.model.Customer_master;
import com.easy.bank.service.CustomerService;

@EnableWebMvc
@Controller
public class RegistrationController {
	@Autowired
	CustomerService customerservice;

	public CustomerService getCustomerservice() {
		return customerservice;
	}

	public void setCustomerservice(CustomerService customerservice) {
		this.customerservice = customerservice;
	}

	@RequestMapping(value = "/verifyLogin")
	public ModelAndView loadLoginPage(RedirectAttributes attiAttributes,
			HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("generalDTO") CustomerDTO customerDto)
			throws Exception {
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		Customer_master cm = customerDto.getCustomermaster();
		String msg = customerservice.verifyLogin(cm);
		if ("Y".equals(msg)) {
			// session.setAttribute("empId", cm.getUser_id());
			return new ModelAndView("Homepage");

		} else {
			out.print("<script type='text/javascript'>alert('Something wents wrong');window.close(); </script>");
			return new ModelAndView("loadLoginPage");
		}

	}

	@RequestMapping("/loadaddCreateUser")
	public ModelAndView Registration(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("generalDTO") CustomerDTO customerDto)
			throws Exception {
		return new ModelAndView("Registration");
	}

	@RequestMapping(value = "/logout")
	public ModelAndView sessionLogout(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("generalDTO") CustomerDTO customerDto)throws Exception {
		HttpSession session=request.getSession();
		session.invalidate();
		return new ModelAndView("loadLoginPage");
	}
}
