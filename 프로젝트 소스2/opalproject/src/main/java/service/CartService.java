package service;
import java.util.List;

import model.vo.CartVO;

	public interface CartService {
		// 1. 장바구니추가
		public void insert(CartVO vo);
		// 2. 장바구니 목록
		List<CartVO> listCart(int cust_cd);
		// 3. 장바구니 삭제
		public void delete(int cart_cd);
		// 4. 장바구니 수정
		public void modifyCart(CartVO vo);
		// 5. 장바구니 금액 합계
		public int sumMoney(int cust_cd);
		// 6. 장바구니 상품확인
		public int countCart(int product_cd, int cust_cd);
		// 7. 장바구니 상품수량 변경
		public void updateCart(CartVO vo);
	}

