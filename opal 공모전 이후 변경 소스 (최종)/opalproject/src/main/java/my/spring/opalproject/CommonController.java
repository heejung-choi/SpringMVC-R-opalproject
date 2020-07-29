package my.spring.opalproject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonController {
	
	@RequestMapping("/customLogout")
	public void logoutGET() {
		System.out.println("Logout 성공");
	}
	
	@RequestMapping(value="/accessError")
	public ModelAndView accessDenied(Authentication auth) {
		ModelAndView mav = new ModelAndView();
		System.out.println("access Denied :" + auth);
		mav.addObject("msg", "Access Denied");
		mav.setViewName("accessError");
		return mav;
	}
	
	@RequestMapping(value="/customLogin")
	public String loginInput(String error, String logout, Model model) {
		System.out.println(error);
		System.out.println(logout);
		if(error != null) {
			model.addAttribute("error","Login Error Check Your Account");
		}
		if(logout != null) {
			model.addAttribute("logout","Logout!!!");
		}
		return "customLogin";
	}
	
	@RequestMapping(value="/kk")
	public String signUp() {
		return "signUp";
	}
}
