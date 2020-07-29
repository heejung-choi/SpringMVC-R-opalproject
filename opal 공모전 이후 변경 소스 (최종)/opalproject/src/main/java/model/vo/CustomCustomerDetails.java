package model.vo;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

// 200524 김동규 DB에서 가져온 고객의 로그인 정보를 담는 VO
public class CustomCustomerDetails implements UserDetails {
	private int cust_cd; // 기본키
	private String cust_name;
	private String cust_id;
	private String cust_pw;
	private String cust_gender;
	private String cust_email;
	private String cust_pnum;
	private String cust_address;
	private String cust_birthday_date;
	public String getCust_signup_date() {
		return cust_signup_date;
	}
	public void setCust_signup_date(String cust_signup_date) {
		this.cust_signup_date = cust_signup_date;
	}
	public String getCust_info_update_date() {
		return cust_info_update_date;
	}
	public void setCust_info_update_date(String cust_info_update_date) {
		this.cust_info_update_date = cust_info_update_date;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	private String cust_signup_date;
	private String cust_info_update_date;
	private boolean enabled;
private String authority;
	
	public int getCust_cd() {
		return cust_cd;
	}
	public void setCust_cd(int cust_cd) {
		this.cust_cd = cust_cd;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id =  cust_id;
	}
	public String getCust_pw() {
		return cust_pw;
	}
	public void setCust_pw(String cust_pw) {
		this.cust_pw =  cust_pw;
	}
	public String getCust_gender() {
		return cust_gender;
	}
	public void setCust_gender(String cust_gender) {
		this.cust_gender = cust_gender;
	}
	public String getCust_email() {
		return cust_email;
	}
	public void setCust_email(String cust_email) {
		this.cust_email = cust_email;
	}
	public String getCust_pnum() {
		return cust_pnum;
	}
	public void setCust_pnum(String cust_pnum) {
		this.cust_pnum = cust_pnum;
	}
	public String getCust_address() {
		return cust_address;
	}
	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}
	public String getCust_birthday_date() {
		return cust_birthday_date;
	}
	public void setCust_birthday_date(String cust_birthday_date) {
		this.cust_birthday_date = cust_birthday_date;
	}
	@Override
	public String toString() {
		return "CustomerVO [cust_cd=" + cust_cd + ", cust_name=" + cust_name + ", cust_id=" + cust_id + ", cust_pw="
				+ cust_pw + ", cust_gender=" + cust_gender + ", cust_email=" + cust_email + ", cust_pnum=" + cust_pnum
				+ ", cust_address=" + cust_address + ", cust_birthday_date=" + cust_birthday_date + "]";
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		
		auth.add(new SimpleGrantedAuthority(authority));
		return auth;
	}
	@Override
	public String getPassword() {
		return cust_pw;
	}
	@Override
	public String getUsername() {
		return cust_id;
	}
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}
	@Override
	public boolean isEnabled() {
		return true;
	}
}
