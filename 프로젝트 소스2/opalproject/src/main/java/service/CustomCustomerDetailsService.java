package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import model.dao.CustomerAuthDAO;
import model.vo.CustomCustomerDetails;

@Repository
public class CustomCustomerDetailsService implements UserDetailsService{
	
	@Autowired
	public CustomerAuthDAO customerAuthDAO;

	@Override
	public UserDetails loadUserByUsername(String cust_id) throws UsernameNotFoundException {
		System.out.println("CustomCustomerDetailsService 클래스의 loadUserByUsernma 들어옴");
		CustomCustomerDetails customer = customerAuthDAO.getUserByID(cust_id);
		if(cust_id==null) {
			throw new UsernameNotFoundException(cust_id);
		}
		return customer;
	}

}
