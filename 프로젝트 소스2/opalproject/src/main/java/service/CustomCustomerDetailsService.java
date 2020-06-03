package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
 
import model.dao.CustomerAuthDAO;
import model.vo.CustomCustomerDetails;

@Repository
public class CustomCustomerDetailsService implements UserDetailsService{
	
	@Autowired
	public CustomerAuthDAO customerAuthDAO;
	
	@Autowired
	private BCryptPasswordEncoder pwencoder;
	
	@Override
	public UserDetails loadUserByUsername(String cust_id) throws UsernameNotFoundException {
		System.out.println("CustomCustomerDetailsService 클래스의 loadUserByUsername 들어옴");
		CustomCustomerDetails customer = customerAuthDAO.getUserByID(cust_id);
		if(cust_id==null) {
			throw new UsernameNotFoundException(cust_id);
		}
		return customer;
	}
	public String getEncryptPassword(String password) {
		System.out.println("getEncrtptPassword");
		return pwencoder.encode(password);
	}
}