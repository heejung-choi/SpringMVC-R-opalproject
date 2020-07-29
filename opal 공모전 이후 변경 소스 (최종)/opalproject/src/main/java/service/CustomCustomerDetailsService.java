package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.zerock.security.domain.CustomUser;
import org.zerock.security.mapper.CustomerMapper;

import model.dao.CustomerAuthDAO;
import model.vo.CustomCustomerDetails;

@Repository
public class CustomCustomerDetailsService implements UserDetailsService{
	
	@Autowired
	public CustomerAuthDAO customerAuthDAO;
	
	@Autowired
	private BCryptPasswordEncoder pwencoder;
	
	@Autowired
	private CustomerMapper customerMapper;
	
	@Override
	public UserDetails loadUserByUsername(String cust_id) throws UsernameNotFoundException {
		System.out.println("CustomCustomerDetailsService 클래스의 loadUserByUsername 함수 시작.");
		System.out.println("CustomCustomerDetailsService 클래스의 loadUserByUsername 함수의 매개변수 cust_id : " + cust_id);
		
		CustomCustomerDetails customer = customerMapper.read(cust_id);
		System.out.println("CustomCustomerDetailsService 클래스의 loadUserByUsername 함수의 쿼리문으로 받아온 customer : " + customer);
//		cust_id로 DB에 쿼리문을 날려 값이 있는지 콘솔로 확인.
		
		
		if(customer==null) {
			System.out.println("CustomCustomerDetailsService 클래스의 loadUserByUsername 함수. UsernameNotFoundException 예외 발생");
			throw new UsernameNotFoundException(cust_id);
		}
//		cust_id로 DB에 쿼리문을 날려 값이 null인지 확인. 있다면 예외 발생시키고, 없으면 함수 반환
//		기존 cust_id==null로 검사를 하면 당연히 걸리지 않아 return값이 null이 되고, 500에러가 발생하는 구조
//		따라서 쿼리문으로 받아온 회원정보가 null인지 확인하는게 맞다. 그래서 security-context.xml의 authentication-failure-url에 걸리도록 하고, 이 값이 없으면 현재 페이지로 리다이렉트되어 error라는 키값이 붙음.
//		loadUserByUsername이 2번 호출되는 이유는 뭔지 모르겠음....일단 그냥 진행....
//		아이디, 비번 둘다 틀렸을 경우에는 아이디 검증에서 걸리기 때문에 authentication-failure-url에 걸림.
//		아이디는 맞고 패스워드가 틀렸을 때 발생하는  There is no PasswordEncoder mapped for the id "null"의 원인은?
		
// 		UserDetails 반환함.. 이역시 인터페이스
// 		UserDetails는 getAuthorities() getUserName()등 추상 메서드를 가지고 있어 직접 구현하거나
// 		시큐리티에서 구현해둔 하위클래스 이용할건지 결정해야 함.
// 		일반적으로 사용되는 방법은 org.springframework.security.core.userdetails.User 클래스를 상속하는 형태..
//		 org.zerock.security 패키지의 CustomUser.java가 상속했음.
		
		System.out.println("CustomCustomerDetailsService 클래스의 loadUserByUsername 함수 끝.");
		return customer == null ? null : new CustomUser(customer);
	}
	
	public String getEncryptPassword(String password) {
		System.out.println("getEncrtptPassword");
		return pwencoder.encode(password);
	}
}