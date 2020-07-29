package my.spring.opalproject;

import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.security.mapper.CustomerMapper;

import model.dao.CartDAO;
import model.vo.CartVO;
import model.vo.CustomCustomerDetails;
import service.CartService;

@Controller
//@RequestMapping("/opalproject/cart/*")
public class CartController {

	@Autowired
	CartService cartService;

	@Autowired
	CartDAO dao;
	
	@Autowired
	CustomerMapper customerMapper;

	// 1. 장바구니 추가

	@RequestMapping(value="/cart/insert", method=RequestMethod.POST)
	public String insert(@ModelAttribute CartVO vo, Principal principal, HttpSession session){
		
		System.out.println("CartController의 insert 함수. 매개변수 CartVO의 값 : " +  vo);
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("CartController의 insert 함수. 현재 사용자 아이디 : " + authentication.getName());
	
//		Controller에서 Principal을 받아내는 경우, 인증되지 않았으면 null이 나오고
//		SecurityContext에서 받아내는 경우, 인증되지 않았으면 String으로 'anonymousUser' 가 나온다.
//		결국 null 인줄 모르고 princial.getName() 같은 메소드를 날렸다가는 NullPointException 발생.
//		 
//		cart database에 cust_cd로 구분할 수 있는 장바구니 디비가 있는데 세션의 역할은..??
		
		CustomCustomerDetails customer = customerMapper.read(authentication.getName());
//		사용자 이름을 통해  DAO에 접근한 후, cust_cd를 가져온다.
		
		System.out.println("CartController의 insert 함수 시작. 현재 사용자 cust_cd : " + customer.getCust_cd());
//		사용자 cust_cd 확인
		
		//int cust_cd = 1;

		vo.setCust_cd(customer.getCust_cd());
//		CartVO 의 vo에 현재 사용자의 cust_cd 값을 넣어줌.
		
		System.out.println(vo);
//		넣어준 CartVO를 확인.
		
		int cust_cd = customer.getCust_cd();
//		변수에 넣어준다. 아래 코드 변경하기 곤란하므로.
		
		
		//장바구니에 기존 상품이 있는지 검사
		int count = cartService.countCart(vo.getProduct_cd(), cust_cd);
		System.out.println("CartController의 insert 함수. 장바구니에 기존 상품이 있는지 확인. count 값 : " + count);

		if(count==0){ 
			// 없으면insert 
			System.out.println("CartController의 insert 함수. count == 0 이므로 insert");
			cartService.insert(vo); 
		} else { 
			//있으면 update 
			cartService.updateCart(vo);
			System.out.println("CartController의 insert 함수. count != 0 이므로 update");
		}
		
		session.setAttribute("vo", vo);
		//session.setAttribute("cust_cd", cust_cd);
		System.out.println("CartController의 insert 함수 끝. ");
		return "redirect:list";
	}

	// 2. 장바구니 목록

	@RequestMapping(value="/cart/list", method=RequestMethod.GET)
	  public ModelAndView list(HttpSession session, ModelAndView mav, CartVO vo) throws IndexOutOfBoundsException{
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomCustomerDetails customer = customerMapper.read(authentication.getName());
		vo.setCust_cd(customer.getCust_cd());
		int cust_cd = customer.getCust_cd();
		
		
//		System.out.println("CartController의 list 함수 시작. 매개변수 값 확인 : CartVO : " + vo);
		Map<String,Object> map = new HashMap<String, Object>();
		//장바구니에 담은게 없어서 cart_cd 값이 null이어도 vo2에 해당하는 getcust_cd 받아오고, 그 cust_cd에 해당하는 장바구니 받아 올 수 있게  
//		CartVO vo2 = (CartVO)session.getAttribute("vo");
		
// 		insert에서 저장했던 CartVO를 꺼내온다.
		//System.out.println("로그아웃 후 세션 vo"+ vo2);
//		int cust_cd = vo2.getCust_cd();
		System.out.println("로그아웃 후 세션 "+ cust_cd);
//		변수 cust_cd에  현재 사용자의 cust_cd 값을 넣어줘서 장바구니 정보를 받아올 준비를 한다.
		
	    List<CartVO> list = cartService.listCart(cust_cd);//장바구니 정보
//		DB에 저장된 현재 사용자의 장바구니 정보를 list에 담아준다. 

	    System.out.println("CartController의 list 함수. list 나와라 이놈아 : "+list);
//		사용자가 담아둔 장바구니 정보를 콘솔에 찍어본다.
	    
	    int sumMoney = cartService.sumMoney(cust_cd);// 장바구니 전체 금액 호출
	    //System.out.println("sumMoney : "+ sumMoney);
	  // 장바구니 전체 긍액에 따라 배송비 구분 
	  //배송료(10만원이상 => 무료, 미만 => 2500원) 
	      int fee = sumMoney >= 100000 ? 0 : 2500;
		/*
		 * map.put("list", list); // 장바구니 정보를 map에 저장 map.put("count", list.size());
		 * //장바구니 상품의 유무
		 */		  
	      map.put("sumMoney", sumMoney); // 장바구니 전체 금액 
		  map.put("fee", fee); // 배송금액
		  map.put("cust_cd", cust_cd);
		  map.put("allSum", sumMoney+fee); // 주문 상품 전체 금액
		  if(!list.isEmpty()) {
		  map.put("cart_cd", list.get(0).getCart_cd());
		  map.put("list", list); // 장바구니 정보를 map에 저장 
		  map.put("count", list.size()); //장바구니 상품의 유무 
		  }
		  //System.out.println("didididididididid"+list.get(0).getCart_cd());
		 // System.out.println(map.toString());
		  //System.out.println(map.keySet());
		 // System.out.println(list.size());
		  mav.addObject("map", map); // map 변수 저장 
		  //System.out.println("----" + map);
		  mav.setViewName("cartlist"); //view(jsp)의 이름 저장 
		  return mav; 	
	  }

	// 3. 장바구니 삭제

	@RequestMapping(value="/cart/delete", method=RequestMethod.GET)
	@ResponseBody
	public void delete(@RequestParam int cart_cd, HttpServletResponse response) throws ServletException, IOException{
	 cartService.delete(cart_cd, response);

	} 	
	/*
	 * public String delete(@RequestParam int cart_cd){
	 * System.out.println("delete: cart_cd : "+ cart_cd);
	 * cartService.delete(cart_cd); return "redirect:list"; }
	 */

	// 4. 장바구니 수정
	/*
	 * @RequestMapping(value="/cart/update", method=RequestMethod.POST)
	 * 
	 * @ResponseBody public void update(@RequestParam int cart_amount, @RequestParam
	 * int product_cd, @RequestParam (defaultValue="1") int cust_cd,
	 * HttpServletResponse response) throws ServletException, IOException { //
	 * session의 id //cust_cd = 1; CartVO vo = new CartVO();
	 * System.out.println(product_cd);
	 * 
	 * //(int)session.getAttribute("cust_cd"); // 레코드의 갯수 만큰 반복문 실행 for(int
	 * i=0;i<product_cd; i++){ vo.setCust_cd(cust_cd);
	 * vo.setCart_amount(cart_amount); vo.setProduct_cd(product_cd);
	 * System.out.println(vo); cartService.modifyCart(vo, response); }
	 * System.out.println("일 다함"); //return "redirect:list"; }
	 */	 

}