package my.spring.opalproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.vo.CustomerVO;
import model.vo.FarmVO;

@Controller
public class MainController {
	
	@RequestMapping(value="/main")
	public String main(CustomerVO cust_vo, FarmVO farm_vo, String error) {
	 System.out.println("메인 화면들어왔음");
	 ModelAndView mav = new ModelAndView();
	 mav.addObject("error", error);
		return  "main";
	}
	//메인 페이지 컨트롤러

	@RequestMapping(value = "/about")
	public String about() {

		return "about";
	}
	// 소개 페이지 컨트롤러 -- 클래스 분할해서 사용해도 됨
	
	@RequestMapping(value = "/team")
	public String team() {

		return "team";
	}
	// 팀 소개 페이지 컨트롤러 -- 클래스 분할해서 사용해도 됨

	@RequestMapping(value = "/datamain")
	public String datamain() {

		return "datamain";
	}
	// 질병DATA 컨트롤러 -- 클래스 분할해서 사용해도 됨


	// 농산물구매 컨트롤러 -- 클래스 분할해서 사용해도 됨

	@RequestMapping(value = "/markets")
	public String markets() {

		return "markets";
	}
	// 농가별구매 컨트롤러 -- 클래스 분할해서 사용해도 됨

	@RequestMapping(value = "/goodsInsertForm")
	public String goodsInsertForm() {

		return "goodsInsertForm";
	}
	// 회원가입 컨트롤러 -- 클래스 분할해서 사용해도 됨
	

}
