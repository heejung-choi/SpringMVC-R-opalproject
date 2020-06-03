package my.spring.opalproject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.dao.CartDAO;
import model.vo.CartVO;
import service.CartService;

@Controller
//@RequestMapping("/opalproject/cart/*")
public class CartController {

	@Autowired
	CartService cartService;

	@Autowired
	CartDAO dao;
	
	// 1. 장바구니 추가 , 수정
	@RequestMapping(value="/cart/{action}")
	public ModelAndView cartPOST(@PathVariable String action, CartVO vo, HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<CartVO> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<String, Object>();

		System.out.println(vo);
		int cust_cd = 1;//(int) session.getAttribute("cust_cd");
		vo.setCust_cd(cust_cd); 
		
		if(action!=null){
		  if(action.equals("insert")) {
			  
		     
			 
			// 장바구니에 기존 상품이 있는지 검사 
		    int count = cartService.countCart(vo.getProduct_cd(), cust_cd);
		    if(count == 0){		
			// 없으면 insert
			cartService.insert(vo);
		      list = cartService.listCart(cust_cd);
		     
		    
		    } 
		    /*
		    else {
			// 있으면 update
			cartService.updateCart(vo);
		    	list = cartService.listCart(cust_cd);
		   }*/
		    
		}else if(action.equals("update")){
			//session의 id
			//int cust_cd = (int) session.getAttribute("cust_cd");
			// 레코드의 갯수 만큰 반복문 실행
			for(int i=0; i<vo.getProduct_cd(); i++){
				vo = new CartVO();
				vo.setCust_cd(cust_cd);
				vo.setCart_amount(1);
				vo.setProduct_cd(1);
				cartService.modifyCart(vo);
				
			}
			list = cartService.listCart(cust_cd);
		}
			
			//int cust_cd = (int) session.getAttribute("cust_cd"); // session에 저장된 cust_cd
			list = cartService.listCart(cust_cd); // 장바구니 정보 
			
			int sumMoney = cartService.sumMoney(cust_cd); // 장바구니 전체 금액 호출
			
			// 장바구니 전체 긍액에 따라 배송비 구분
			// 배송료(10만원이상 => 무료, 미만 => 2500원)
			int fee = sumMoney >= 100000 ? 0 : 2500;
			map.put("list", list);				// 장바구니 정보를 map에 저장
			map.put("count", list.size());		// 장바구니 상품의 유무
			map.put("sumMoney", vo.getMoney()*vo.getCart_amount());		// 장바구니 전체 금액
			map.put("fee", fee); 				// 배송금액
			//map.put("money", vo.getMoney());
			map.put("allSum", sumMoney+fee);	// 주문 상품 전체 금액 
			
			//mav.setViewName("cartlist");	// view(jsp)의 이름 저장
		}
		mav.addObject("list",list);
		mav.addObject("map", map);			// map 변수 저장

		mav.setViewName("cartlist");
		return mav;
	}	
		
		
		
		// 2. 장바구니 목록
		@RequestMapping(value="/cart/list", method=RequestMethod.GET)
		public ModelAndView list(HttpSession session, ModelAndView mav){
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			int cust_cd = (int) session.getAttribute("cust_cd"); // session에 저장된 cust_cd
			List<CartVO> list = cartService.listCart(cust_cd); // 장바구니 정보 
			System.out.println("list :" + list);
			
			int sumMoney = cartService.sumMoney(cust_cd); // 장바구니 전체 금액 호출
			System.out.println("sumMoney :" + sumMoney);
			
			// 장바구니 전체 긍액에 따라 배송비 구분
			// 배송료(10만원이상 => 무료, 미만 => 2500원)
			int fee = sumMoney >= 100000 ? 0 : 2500;
			map.put("list", list);				// 장바구니 정보를 map에 저장
			map.put("count", list.size());		// 장바구니 상품의 유무
			map.put("sumMoney", sumMoney);		// 장바구니 전체 금액
			map.put("fee", fee); 				// 배송금액
			
			map.put("allSum", sumMoney+fee);	// 주문 상품 전체 금액 
			
			mav.addObject("map", map);			// map 변수 저장
			System.out.println("map :" + map);
			mav.setViewName("cartlist");	// view(jsp)의 이름 저장
			return mav;
		}
		

	// 3. 장바구니 삭제
		@RequestMapping(value="/cart/delete", method=RequestMethod.GET)
		public ModelAndView delete(@RequestParam int cart_cd, CartVO vo, HttpSession session){
			ModelAndView mav = new ModelAndView();
			int cust_cd = (int) session.getAttribute("cust_cd"); 
			List<CartVO> list = cartService.listCart(cust_cd);
			
			cartService.delete(cart_cd);
			list = cartService.listCart(cust_cd);
			mav.setViewName("cartlist");
			mav.addObject("list",list);
			return mav;
		}


	
	
	
	
	
	
	
	/*
	 * // 1. 장바구니 추가
	 * 
	 * @RequestMapping(value="/opalproject/cart/insert", method=RequestMethod.POST)
	 * public String insert(@ModelAttribute CartVO vo, HttpSession session){ int
	 * cust_cd = (int) session.getAttribute("cust_cd");
	 *  vo.setCust_cd(cust_cd); //
	 *
	 *장바구니에 기존 상품이 있는지 검사 
	 * int count = cartService.countCart(vo.getProduct_cd(),
	 * cust_cd); if(count == 0){ // 없으면 insert cartService.insert(vo); } else { //
	 * 있으면 update cartService.updateCart(vo); } return
	 * "redirect:/opalproject/cart/list"; }
	 * 
	 * // 2. 장바구니 목록
	 * 
	 * @RequestMapping(value="/opalproject/cart/list", method=RequestMethod.GET)
	 * public ModelAndView list(HttpSession session, ModelAndView mav){ Map<String,
	 * Object> map = new HashMap<String, Object>(); int cust_cd = (int)
	 * session.getAttribute("cust_cd"); // session에 저장된 cust_id List<CartVO> list =
	 * cartService.listCart(cust_cd); // 장바구니 정보 int sumMoney =
	 * cartService.sumMoney(cust_cd); // 장바구니 전체 금액 호출 // 장바구니 전체 긍액에 따라 배송비 구분 //
	 * 배송료(10만원이상 => 무료, 미만 => 2500원) int fee = sumMoney >= 100000 ? 0 : 2500;
	 * map.put("list", list); // 장바구니 정보를 map에 저장 map.put("count", list.size()); //
	 * 장바구니 상품의 유무 map.put("sumMoney", sumMoney); // 장바구니 전체 금액 map.put("fee", fee);
	 * // 배송금액 map.put("allSum", sumMoney+fee); // 주문 상품 전체 금액
	 * 
	 * mav.addObject("map", map); // map 변수 저장 mav.setViewName("cartlist"); //
	 * view(jsp)의 이름 저장 return mav; }
	 * 
	 * // 3. 장바구니 삭제
	 * 
	 * @RequestMapping(value="/opalproject/cart/delete", method=RequestMethod.GET)
	 * public String delete(@RequestParam int cart_cd){ cartService.delete(cart_cd);
	 * return "redirect:/opalproject/cart/list"; }
	 * 
	 * // 4. 장바구니 수정
	 * 
	 * @RequestMapping(value="/opalproject/cart/update", method=RequestMethod.POST)
	 * public String update(@RequestParam int[] cart_amount, @RequestParam int[]
	 * product_cd, HttpSession session) { // session의 id int cust_cd = (int)
	 * session.getAttribute("cust_cd"); // 레코드의 갯수 만큰 반복문 실행 for(int i=0;
	 * i<product_cd.length; i++){ CartVO vo = new CartVO(); vo.setCust_cd(cust_cd);
	 * vo.setCart_amount(cart_amount[i]); vo.setProduct_cd(product_cd[i]);
	 * cartService.modifyCart(vo); }
	 * 
	 * return "redirect:/opalproject/cart/list"; }
	 */
}
