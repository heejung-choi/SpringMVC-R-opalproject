package model.vo;

public class GoodsVO {
	// 20200513 Eunha GoodsVO

	private int product_cd; // 상품 아이디
	private String product_name; // 상품이름
	private String product_content; // 상품 상세설명
	private int product_price; // 상품 가격
	private int product_su; // 상품 수
	private String product_url; // 상품 이미지 url

	public String getProduct_url() {
		return product_url;
	}

	public void setProduct_url(String product_url) {
		this.product_url = product_url;
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

	public String getProduct_content() {
		return product_content;
	}

	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public int getProduct_su() {
		return product_su;
	}

	public void setProduct_su(int product_su) {
		this.product_su = product_su;
	}


	@Override
	public String toString() {
		return "GoodsVO [product_cd=" + product_cd + ", product_name=" + product_name
				+ ", product_content=" + product_content + ", product_price=" + product_price + ", product_su="
				+ product_su + ", product_url=" + product_url + "]";
	}

}
