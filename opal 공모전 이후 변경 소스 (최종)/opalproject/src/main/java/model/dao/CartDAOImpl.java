package model.dao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.CartVO;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	SqlSession sqlSession;

	private static String name = "resource.cartMapper";
	
	
	// 1. 장바구니 추가
	@Override
	public void insert(CartVO vo) {
	      sqlSession.insert(name+".insertCart", vo);
		
	}
	
	// 2. 장바구니 목록
	@Override
	public List<CartVO> listCart(int cust_cd) {
		List<CartVO> listup = new ArrayList<>();
		listup = sqlSession.selectList(name+".listCart",cust_cd);
		System.out.println("CartDAOIml의 cust_cd : "+ cust_cd);
		for(int i =0 ; i<listup.size();i++)
			System.out.println("sql에서 뽑아온 vo들"+listup.get(i));
		//System.out.println("--dao--" + listup);
		return listup;
	}
	
	// 3. 장바구니 삭제
	@Override
	public boolean delete(int cart_cd) {
		boolean result = false;
		if(sqlSession.delete(name+".deleteCart", cart_cd)==1)
			result = true;
		return result;
		//System.out.println("삭제 안되냥");
	}
	
	
	  // 4. 장바구니 수정
	  
	  @Override
	  public boolean modifyCart(CartVO vo) { 
	   boolean result = false;
	  Map<String, Object> map = new HashMap<>();
	  map.put("product_cd",vo.getProduct_cd());
	  map.put("cart_amount",vo.getCart_amount()); 
	  map.put("cust_cd",vo.getCust_cd()); 
	  if(sqlSession.update(name+".modifyCart", vo)==1) 
		  result = true; 
	      return result; 
       }
	 
	// 5. 장바구니 금액 합계
	@Override
	public int sumMoney(int cust_cd) {
		sqlSession.selectOne(name+".sumMoney", cust_cd);
		return sqlSession.selectOne(name+".sumMoney", cust_cd);
	}
	
	// 6. 장바구니 상품확인
	@Override
	public int countCart(int product_cd, int cust_cd) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("product_cd", product_cd);
		map.put("cust_cd", cust_cd);
		return sqlSession.selectOne(name+".countCart", map);
	}
	
	// 7. 장바구니 상품수량 변경
	@Override
	public void updateCart(CartVO vo) {
		sqlSession.update(name+".updateCart", vo);
	}
}

