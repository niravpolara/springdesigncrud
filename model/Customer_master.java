package com.easy.bank.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="EMP_REGISTRATION")
public class Customer_master {
	@Id
	private String  user_id; 
	private String user_type;
	private String  user_name;
	private String  role_name;
	private Date	dateofbirth;
	private String  email_id;
	private String  gender; 
	private String  land_line;
	private String  address; 
	private String  phone; 
	private String  password;
	private String  confirm_password;
	private String  login_name;
	private Date  crt_date;
	private String  crt_ip; 
	private Date  lst_upd_date;
	private String  lst_upd_ip; 
	private String  status;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLand_line() {
		return land_line;
	}
	public void setLand_line(String land_line) {
		this.land_line = land_line;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}
	public Date getCrt_date() {
		return crt_date;
	}
	public void setCrt_date(Date crt_date) {
		this.crt_date = crt_date;
	}
	public String getCrt_ip() {
		return crt_ip;
	}
	public void setCrt_ip(String crt_ip) {
		this.crt_ip = crt_ip;
	}
	public Date getLst_upd_date() {
		return lst_upd_date;
	}
	public void setLst_upd_date(Date lst_upd_date) {
		this.lst_upd_date = lst_upd_date;
	}
	public String getLst_upd_ip() {
		return lst_upd_ip;
	}
	public void setLst_upd_ip(String lst_upd_ip) {
		this.lst_upd_ip = lst_upd_ip;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
