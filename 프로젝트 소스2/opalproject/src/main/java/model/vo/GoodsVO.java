package model.vo;

public class GoodsVO {
	//20200513 Eunha GoodsVO
	
	private int product_cd; //�������� ����
	private String part_name; //�� �̸�
	private String part_id; // ��� ���̵�
	private String product_name; //��ǰ �̸�
	private String product_content; //��ǰ ����
	private int product_price; // ��ǰ ����
	private int product_su; // ��ǰ ����
	/*
	 * private int farm_cd; //�� �ڵ� , �� ���̺��� ã���� ���� ,�������� �����Ǵ� �κ�
	 */
	
	
	public int getProduct_cd() {
		return product_cd;
	}



	public void setProduct_cd(int product_cd) {
		this.product_cd = product_cd;
	}



	public String getPart_name() {
		return part_name;
	}



	public void setPart_name(String part_name) {
		this.part_name = part_name;
	}



	public String getPart_id() {
		return part_id;
	}



	public void setPart_id(String part_id) {
		this.part_id = part_id;
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


	/*
	 * public int getFarm_cd() { return farm_cd; }
	 * 
	 * 
	 * 
	 * public void setFarm_cd(int farm_cd) { this.farm_cd = farm_cd; }
	 */


	@Override
	public String toString() {
		return "GoodsVO [product_cd=" + product_cd + ", part_name=" + part_name + ", part_id=" + part_id + ",product_name=" + product_name + ", product_content=" + product_content + ", productPrice=" + product_price + ", productSu=" + product_su + ", productCd=" +  product_cd + "]";
	}
	
}
