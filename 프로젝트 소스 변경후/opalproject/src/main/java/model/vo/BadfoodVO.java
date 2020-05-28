package model.vo;


public class BadfoodVO {
//20200526 BadfoodVO생성
	// 음식 코드
	private String food_cd;
	// 음식 이름
	private String food_name;
	// 질병 코드
	private String sick_cd;
	// 음식 이미지
	private String food_img;

	public String getfood_cd() {
		return food_cd;
	}

	public void setfood_cd(String food_cd) {
		this.food_cd = food_cd;
	}

	public String getfood_name() {
		return food_name;
	}

	public void setfood_name(String food_name) {
		this.food_name = food_name;
	}

	public String getSick_cd() {
		return sick_cd;
	}

	public void setSick_cd(String sick_cd) {
		this.sick_cd = sick_cd;
	}

	public String getfood_img() {
		return food_img;
	}

	public void setfood_img(String food_img) {
		this.food_img = food_img;
	}

	@Override
	public String toString() {
		return "[food_cd=" + food_cd + ", food_name=" + food_name +  "]";
	}
	
	/*
	 * public String toString() { return "BadfoodVO[food_cd=" + food_cd +
	 * ", food_name=" + food_name + ", sick_cd=" + sick_cd + ",food_img=" + food_img
	 * + "]"; }
	 */
}
