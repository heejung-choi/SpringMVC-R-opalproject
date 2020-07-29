package my.spring.opalproject;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.security.mapper.CustomerMapper;

import model.vo.CustomCustomerDetails;
import model.vo.CustomerVO;






@Controller
public class IndexController {
	
	
	@Autowired
	CustomerMapper customerMapper;
	
	@Autowired
	private BCryptPasswordEncoder pwencoder;
	
	@RequestMapping(value="/")
	public String welcome() {
		
		return "index";
	}
	
	
	@RequestMapping(value="/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value="/mypage") //회원 정보 수정 
	public ModelAndView mypage(@ModelAttribute CustomerVO vo,HttpSession session, Principal principal) {
				
		ModelAndView mav = new ModelAndView();
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomCustomerDetails customer = customerMapper.read(authentication.getName());
		
		String rawpw = "{bcrypt}" + pwencoder.encode(vo.getCust_pw());
		boolean matcheResult = rawpw.equals(customer.getPassword());
		
		System.out.println(rawpw);
		System.out.println(customer.getPassword());
		
		
			System.out.println("vo같은 역할?" +customer);
			System.out.println("vo1새킹"+vo);
			String[] custemail = customer.getCust_email().split("@");
			System.out.println("메일"+custemail);
			String[] custaddress = customer.getCust_address().split("/");
			String custpnum1 = customer.getCust_pnum().substring(0, 2);
			String custpnum2 = customer.getCust_pnum().substring(3, 6);
			String custpnum3 = customer.getCust_pnum().substring(7);
			
			mav.addObject("customer", customer);
			session.setAttribute("CustomerVO", customer);
			mav.addObject("custemail", custemail);
			mav.addObject("custaddress", custaddress);
			mav.addObject("custpnum1", custpnum1);
			mav.addObject("custpnum2", custpnum2);
			mav.addObject("custpnum3", custpnum3);
			mav.setViewName("mypage");
		
		
		
		
		
		return mav;
	}
	

	
	@RequestMapping(value="/meminfomodify") //회원정보 수정 전 비번 확인
	public String meminfomodify() {
		
		return "memInfoModify";
	}
	
	@RequestMapping(value="/meminfoupdate") //회원정보 수정 전 비번 확인
	public String meminfoupdate() {
		
		return "meminfoupdate";
	}

}
