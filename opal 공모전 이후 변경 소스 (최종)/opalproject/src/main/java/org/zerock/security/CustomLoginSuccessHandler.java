package org.zerock.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;


public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException{
		List<String> roleNames = new ArrayList<>();
		auth.getAuthorities().forEach(authority -> {roleNames.add(authority.getAuthority());});
		System.out.println("로그인 성공 핸들러 들어옴");
		System.out.println(roleNames.contains("ROLE_PARTNER"));
		// 200514 김동규 admin 권한이 있는 유저가 로그인 시 관리 페이지(supervisor)로 이동.
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/opalproject/supervisor");
			return;
		}
		
		// 200514 김동규 고객 권한이 있는 유저가 로그인 시 메인 페이지로 이동. 매핑명 주의.
		if(roleNames.contains("ROLE_CUSTOMER")) {
			response.sendRedirect("/opalproject/index");
			return;
		}
		
		response.sendRedirect("/opalproject/index");
	}
}
/*
 200514 김동규
로그인 한 사용자에 부여괸 권한 Authentication 객체를 이용해서 사용자가 가진 모든 권한을 문자열로 체크.
만일 사용자가 'ROLE_ADMIN' 권한을 가졌다면 로그인 후에 바로 '/sample/admin'으로 이동하게 되는 방식.
 */