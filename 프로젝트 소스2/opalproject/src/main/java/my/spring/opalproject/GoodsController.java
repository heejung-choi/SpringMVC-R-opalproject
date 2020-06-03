package my.spring.opalproject;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.dao.GoodsDAO;
import model.vo.GoodsVO;


@Controller
public class GoodsController {
	@Autowired
	GoodsDAO dao;
	
	//listall  GET 상품전체보기
	@RequestMapping(value="/goods", method=RequestMethod.GET)
	public ModelAndView goodsList() {
		ModelAndView mav = new ModelAndView();
		List<GoodsVO> list = dao.listAll();
		//System.out.println("리스트 안오냥"+list);
		mav.addObject("list",list);
		mav.setViewName("goods");
		return mav;
	}
	//listone GET 상품상세보기
	@RequestMapping(value="/goods/{action}", method=RequestMethod.GET)
	public ModelAndView goodsGET(@PathVariable String action, GoodsVO vo) {
		ModelAndView mav = new ModelAndView();
		
		List<GoodsVO> list = dao.listAll();
		
		if(action!=null) {
			if(action.equals("read")) {
				vo = dao.listOne(vo.getProduct_cd());
				list = dao.listAll();         
				mav.addObject("listOne",vo);
				mav.setViewName("details");
			}else {
				vo = dao.listOne(vo.getProduct_cd());
				list = dao.listAll();
				mav.addObject("listOne",vo);
				mav.setViewName("goods");
			}
		}
		mav.addObject("list",list);
		return mav;
	}
	

	
	
	
	
	
	/*
	 * @RequestMapping(value = "/goods", method = RequestMethod.POST) protected
	 * ModelAndView post(GoodsVO vo, String action) {
	 * System.out.println("Controller post �Լ��� ����.");
	 * System.out.println("action ��"+action);
	 * System.out.println("�ƾƾƾƾƾƾƾƾ�"+vo.getProduct_name()); ModelAndView mav = new
	 * ModelAndView();
	 * 
	 * if (action.equals("insert")) {
	 * System.out.println("if�� equal==insert �ȿ� ����."); boolean result =
	 * dao.insert(vo); if (result) { System.out.println("if�ȿ� if ����");
	 * mav.addObject("msg", vo.getPart_name() + "���� ���� ���������� �ԷµǾ����ϴ�.");
	 * } else { System.out.println("if�ȿ� if ����"); mav.addObject("msg",
	 * vo.getPart_name() + "���� ���� �Էµ��� �ʾҽ��ϴ�."); } }
	 * System.out.println("if�� ����."); mav.addObject("list", dao.listAll());
	 * mav.setViewName("goods"); return mav; }
	 * 
	 * @RequestMapping(value = { "/goodsInsert" }, method = RequestMethod.GET)
	 * public String one() { return "goodsInsertForm"; }
	 */
	
	/*
	 * //상품상세보기
	 * 
	 * @RequestMapping("/detail/{product_cd}") public ModelAndView
	 * detail(@PathVariable("product_cd") int product_cd, ModelAndView mav) {
	 * mav.setViewName("details"); mav.addObject("vo",
	 * productService.detailProduct(product_cd)); return mav;
	 * 
	 * }
	 */
	
	
	
	
	
	
	
	
	/*
	 * @RequestMapping(value = "/goods", method = RequestMethod.GET) public
	 * ModelAndView doGet(@RequestParam(value = "action", required = false) String
	 * action,
	 * 
	 * @RequestParam(defaultValue = "1") int pgNum,
	 * 
	 * @RequestParam(value = "key", required = false) String key,
	 * 
	 * @RequestParam(value = "searchType", required = false) String searchType,
	 * 
	 * @RequestParam(defaultValue = "0") int post_id, HttpSession session) {
	 * ModelAndView mav = new ModelAndView(); List<GoodsVO> list; int count = 0;
	 * String linkStr = ""; if (action == null) { list = dao.listAll(pgNum);
	 * session.setAttribute("pgNum", pgNum); System.out.println("pgNum : " + pgNum);
	 * mav.addObject("msg", "��깰 �Ǹ� �Խ���"); if (list != null && list.size() != 0) {
	 * mav.addObject("list", list); } count = dao.getCount(); } else if
	 * (action.equals("sort")) { list = dao.listSort(key, pgNum);
	 * mav.addObject("msg", "��ǰ ����Ʈ(" + key + "����)"); if (list != null &&
	 * list.size() != 0) { mav.addObject("list", list); } count = dao.getCount();
	 * linkStr = "&action=sort&key=" + key; } else if (action.equals("listone")) {
	 * GoodsVO vo = dao.listOne(post_id); if (vo != null) {
	 * session.setAttribute("vo", vo); mav.addObject("msg", "��ǰ �󼼼���");
	 * mav.addObject("vo", vo); } } else if (action.equals("search")) { list =
	 * dao.search(key, searchType, pgNum); if (list != null && list.size() != 0) {
	 * mav.addObject("msg", key + "��(��) �����ϴ� �� ����Ʈ"); mav.addObject("list", list);
	 * count = dao.getCount(key, searchType); linkStr = "&searchType=" + searchType
	 * + "&key=" + key + "&action=search"; } else { mav.addObject("snull", key +
	 * "�� �����ϴ� �˻����� �����ϴ�."); } } else if (action.equals("delete")) {
	 * dao.delete(post_id); System.out.println("action : " + action);
	 * mav.setViewName("redirect:http://localhost:8000/opalproject/goods?pgNum=" +
	 * session.getAttribute("pgNum")); return mav; }
	 * 
	 * mav.addObject("totalCount", count); mav.addObject("pagelist", new
	 * GoodsDAO().getPageLinkList(pgNum, linkStr, count)); mav.addObject("pgNum",
	 * pgNum); mav.setViewName("goods"); return mav; }
	 * 
	 * @RequestMapping(value = { "/goods" }, method = RequestMethod.POST) public
	 * String doPost(@RequestParam("action") String
	 * action, @RequestParam(defaultValue = "0") int post_id,
	 * 
	 * @ModelAttribute("vo") GoodsVO vo, HttpSession session) { MainVO vo1 =
	 * (MainVO) session.getAttribute("mainVO"); vo.setPartId(vo1.getPartId());
	 * vo.setPartName(vo1.getPartName()); if (action.equals("insert")) {
	 * dao.insert(vo); } else if (action.equals("update")) { dao.update(vo); }
	 * return "redirect:http://70.12.115.170:8000/opalproject/goods?pgNum=" +
	 * session.getAttribute("pgNum"); }
	 * 
	 * @RequestMapping(value = { "/goodsInsert" }, method = RequestMethod.GET)
	 * public String one() { return "goodsInsertForm"; }
	 * 
	 * @RequestMapping(value = { "/goodsupdate" }, method = RequestMethod.GET)
	 * public String two() { return "goodsUpdateForm"; }
	 */
}
