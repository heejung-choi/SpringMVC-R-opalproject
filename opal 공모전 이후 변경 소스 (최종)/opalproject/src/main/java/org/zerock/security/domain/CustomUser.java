package org.zerock.security.domain;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import model.vo.CustomCustomerDetails;

public class CustomUser extends User{

	private static final long serialVersionUID = 1L;
	
	private CustomCustomerDetails customCustomerDetails;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
		// TODO Auto-generated constructor stub
		System.out.println("CustomUser 클래스의 디폴트 생성자 함수 실행");
	}
	
	public CustomUser(CustomCustomerDetails vo) {
		
		super(vo.getCust_id(),vo.getCust_pw(),vo.getAuthorities());
		System.out.println("CustomUser 클래스의 생성자 함수 실행");
		this.customCustomerDetails = vo;
	}
	
	

}
