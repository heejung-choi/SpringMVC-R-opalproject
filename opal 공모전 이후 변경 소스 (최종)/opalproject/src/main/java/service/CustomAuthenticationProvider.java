package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.zerock.security.domain.CustomUser;

public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	@Autowired
	private BCryptPasswordEncoder pwencoder;
	
	
	@Autowired
	private CustomCustomerDetailsService customCustomerDetailsService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		System.out.println("CustomAuthenticationProvider 클래스의 authenticate 함수 시작");
		
		String cust_id = (String) authentication.getPrincipal();
		String cust_pw = (String) authentication.getCredentials();
//		20200527 김동규 로그인 폼에서 입력한 아이디와 비밀번호 변수에 담기
		System.out.println("CustomAuthenticationProvider 클래스의 authenticate의 loginForm에서 입력한 ID : " + cust_id);
		System.out.println("CustomAuthenticationProvider 클래스의 authenticate의 loginForm에서 입력한 PW : " + cust_pw);
//		20200527 김동규 로그인 폼에서 입력한 아이디와 비밀번호 콘솔로 확인
		
		CustomUser customer = (CustomUser) customCustomerDetailsService.loadUserByUsername(cust_id);
		System.out.println("CustomAuthenticationProvider 클래스의 authenticate의 DB에서 가져온 customer 정보 : " + customer);
// 		20200527 김동규 DB에서 가져온 고객 정보. NULL or 고객정보
		
		boolean matchPasswordResult = matchPassword(cust_pw,customer.getPassword());
		System.out.println("CustomAuthenticationProvider 클래스의 authenticate 함수의 matchPasswordResult : " + matchPasswordResult);
		
		if(!matchPasswordResult) {
			System.out.println("CustomAuthenticationProvider 클래스의 authenticate 함수. BadCredentialsException 예외 발생 ");
			throw new BadCredentialsException(cust_id);
		}
		
		System.out.println("CustomAuthenticationProvider 클래스의 authenticate 함수 끝");
		return new UsernamePasswordAuthenticationToken(customer, pwencoder.encode(cust_pw), customer.getAuthorities());
	}
	
	@Override
	public boolean supports(Class<?> authentication) {
		return true;
	}
	
	private boolean matchPassword(String cust_pw, String cust_dbpw) {
		System.out.println("CustomAuthenticationProvider 클래스의 matchPassword 함수 (패스워드 맞으면 true, 틀리면 false 반환)");
		return pwencoder.matches(cust_pw,cust_dbpw);
	}
	
}