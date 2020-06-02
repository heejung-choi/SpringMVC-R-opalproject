package my.spring.opalproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.dao.MemberSignUpDAO;
import model.vo.CustomCustomerDetails;
import model.vo.CustomerVO;

@Controller
public class UserController {
	
	@Autowired
	MemberSignUpDAO msudao;
	
	@RequestMapping(value="/salesuser")
	public String doSalesUser() {
		return "salesUser";
	}
	
	@RequestMapping(value="/signup")
	public String custAndPartner() {
		return "signUp";
	}
	
	@RequestMapping(value="/signupform")
	public ModelAndView signUpForm(@RequestParam(value="member" , required=true) String member) {
		ModelAndView mav = new ModelAndView();
		String url = "";
		if(member.equals("customer"))
			url = "customerSignUpForm";
		else
			url = "partnerSignUpForm";
		mav.addObject("member", member);
		mav.setViewName(url);
		return mav;
	}
	
	@RequestMapping(value="/signin")
	public String signIn() {
		System.out.println("로그인 폼으로");
		return "signInForm";
	}
	
	@RequestMapping(value="/csignex")
	public ModelAndView customerSignUpComplete(
			CustomerVO vo,
			@RequestParam(value="cust_email1") String cust_email1, 
			@RequestParam(value="cust_email2") String cust_email2,
			@RequestParam(value="cust_pnum1") String cust_pnum1,
			@RequestParam(value="cust_pnum2") String cust_pnum2,
			@RequestParam(value="cust_pnum3") String cust_pnum3,
			@RequestParam(value="cust_address1", defaultValue="()") String cust_address1,
			@RequestParam(value="cust_address2", defaultValue="()") String cust_address2,
			@RequestParam(value="cust_address3", defaultValue="()") String cust_address3,
			@RequestParam(value="cust_address4", defaultValue="()") String cust_address4) {
		ModelAndView mav = new ModelAndView();
		vo.setCust_email(cust_email1+"@"+cust_email2);
		vo.setCust_address(cust_address1+cust_address2+cust_address3+cust_address4);
		vo.setCust_pnum(cust_pnum1+cust_pnum2+cust_pnum3);
		if(msudao.insertMember(vo))
			System.out.println(vo.getCust_id()+"님 회원가입 성공");
		else
			System.out.println("회원가입 실패");
		mav.setViewName("main");
		return mav;
	}

//	@RequestMapping(value="/customerSignUpComplete")
//	public ModelAndView customerSignUpComplete(
//			@RequestParam(value="cust_id") String cust_id, 
//			@RequestParam(value="cust_pw") String cust_pw,
//			@RequestParam(value="cust_name") String cust_name, 
//			@RequestParam(value="cust_gender") String cust_gender, 
//			@RequestParam(value="cust_email1") String cust_email1, 
//			@RequestParam(value="cust_email2") String cust_email2,
//			@RequestParam(value="cust_pnum1") String cust_pnum1,
//			@RequestParam(value="cust_pnum2") String cust_pnum2,
//			@RequestParam(value="cust_pnum3") String cust_pnum3,
//			@RequestParam(value="cust_address1", defaultValue="()") String cust_address1,
//			@RequestParam(value="cust_address2", defaultValue="()") String cust_address2,
//			@RequestParam(value="cust_address3", defaultValue="()") String cust_address3,
//			@RequestParam(value="cust_address4", defaultValue="()") String cust_address4,
//			@RequestParam(value="cust_birthday_date") String cust_birthday_date) {
//	
//		ModelAndView mav = new ModelAndView();
//		String cust_email = cust_email1+"@"+cust_email2;
//		String cust_address = cust_address1+cust_address2+cust_address3+cust_address4;
//		String cust_pnum = cust_pnum1+cust_pnum2+cust_pnum3;
//		msudao.insertMember(cust_id, cust_pw, cust_name, cust_gender, cust_email, cust_pnum, cust_address, cust_birthday_date);
//		mav.setViewName("main");
//		return mav;
//	}
	
//	@RequestMapping(value="/partnerSignUpComplete")
//	public ModelAndView partnerSignUpComplete(@RequestParam(value="userid") String userid, @RequestParam(value="password") String password,
//			@RequestParam(value="username") String username, @RequestParam(value="birthdate") String birthdate, @RequestParam(value="gender") String gender,
//			@RequestParam(value="email1") String email1, @RequestParam(value="email2") String email2,@RequestParam(value="phonenumber") String phonenumber,
//			@RequestParam(value="address1") String address) {
//		ModelAndView mav = new ModelAndView();
//
//		System.out.println("컨트롤러 insertMember 호출 전");
//		msudao.insertMember(userid, password, username, birthdate, gender, email1, email2, address);
//		mav.setViewName("main");
//		return mav;
//	}
}
