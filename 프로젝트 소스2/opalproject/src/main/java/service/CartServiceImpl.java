package service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.dao.CartDAO;
import model.vo.CartVO;

@Service
public class CartServiceImpl implements CartService {

	private final CartDAO cartDao;
	
	@Autowired
	public CartServiceImpl(CartDAO cartDao) {
		this.cartDao = cartDao;
	}

	// 1. 장바구니 추가
	@Override
	public void insert(CartVO vo) {
		cartDao.insert(vo);
	}
	// 2. 장바구니 목록
	@Override
	public List<CartVO> listCart(int cust_cd) {
		return cartDao.listCart(cust_cd);
	}
	// 3. 장바구니 삭제
	@Override
	public void delete(int cart_cd) {
		cartDao.delete(cart_cd);
	}
	// 4. 장바구니 수정
	@Override
	public void modifyCart(CartVO vo) {
		cartDao.modifyCart(vo);
	}
	// 5. 장바구니 금액 합계
	@Override
	public int sumMoney(int cust_cd) {
		return cartDao.sumMoney(cust_cd);
	}
	// 6. 장바구니 상품확인
	@Override
	public int countCart(int product_cd, int cust_cd) {
		return cartDao.countCart(product_cd, cust_cd);
	}
	// 7. 장바구니 상품수량 변경
	@Override
	public void updateCart(CartVO vo) {
		cartDao.updateCart(vo);
	}

}
