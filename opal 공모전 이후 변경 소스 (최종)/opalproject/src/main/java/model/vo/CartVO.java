package model.vo;

public class CartVO {
	private int cart_cd;//장바구니 코드
	private int cust_cd;//고객 코드
	private String cust_name;// 고객 이름
	private int product_cd;//상품 코드
	private String product_name;//상품이름
	private int money;//상품가격
	private int cart_amount;// 구매 수량
	
	public int getCart_cd() {
		return cart_cd;
	}
	public void setCart_cd(int cart_cd) {
		this.cart_cd = cart_cd;
	}
	public int getCust_cd() {
		return cust_cd;
	}
	public void setCust_cd(int cust_cd) {
		this.cust_cd = cust_cd;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public int getProduct_cd() {
		return product_cd;
	}
	public void setProduct_cd(int product_cd) {
		this.product_cd = product_cd;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getCart_amount() {
		return cart_amount;
	}
	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount;
	}
	@Override
	public String toString() {
		return "CartVO [cart_cd=" + cart_cd + ", cust_cd=" + cust_cd
				+ ", cust_name=" + cust_name + ", product_cd=" + product_cd + ", product_name="
				+ product_name + ", money=" + money + ", cart_amount=" + cart_amount + "]";
	}
}
