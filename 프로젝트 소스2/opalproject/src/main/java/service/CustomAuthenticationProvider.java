package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import model.vo.CustomCustomerDetails;

public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	@Autowired
	private BCryptPasswordEncoder pwencoder;
	
	
	@Autowired
	private CustomCustomerDetailsService customCustomerDetailsService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String cust_id = (String) authentication.getPrincipal();
		String cust_pw = (String) authentication.getCredentials();
		System.out.println(" login authenticate 들어왓다리" + cust_pw);
		// 20200527 김동규 로그인 폼에서 입력한 아이디와 비밀번호
		
		CustomCustomerDetails customer = (CustomCustomerDetails)customCustomerDetailsService.loadUserByUsername(cust_id);
		// 20200527 김동규 DB에서 가져온 고객 정보
		
		if(!matchPassword(cust_pw,customer.getPassword())) {
			throw new BadCredentialsException(cust_id);
		}
		
		if(!customer.isEnabled()) {
			throw new BadCredentialsException(cust_id);
		}

		return new UsernamePasswordAuthenticationToken(cust_id, pwencoder.encode(cust_pw), customer.getAuthorities());

	}
	
	@Override
	public boolean supports(Class<?> authentication) {
		return true;
	}
	
	private boolean matchPassword(String cust_pw, String cust_dbpw) {
		return pwencoder.matches(cust_pw,cust_dbpw);
	}
	
}