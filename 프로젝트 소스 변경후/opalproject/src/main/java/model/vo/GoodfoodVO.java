package model.vo;


public class GoodfoodVO {
//20200527 GoodfoodVO생성
	// 음식 코드
	private String good_food_cd;
	// 음식 이름
	private String good_food_name;
	// 질병 코드
	private String sick_cd;
	// 음식 이미지
	private String good_food_img;

	public String getgood_food_cd() {
		return good_food_cd;
	}

	public void setgood_food_cd(String good_food_cd) {
		this.good_food_cd = good_food_cd;
	}

	public String getgood_food_name() {
		return good_food_name;
	}

	public void setgood_food_name(String good_food_name) {
		this.good_food_name = good_food_name;
	}

	public String getSick_cd() {
		return sick_cd;
	}

	public void setSick_cd(String sick_cd) {
		this.sick_cd = sick_cd;
	}

	public String getgood_food_img() {
		return good_food_img;
	}

	public void setgood_food_img(String good_food_img) {
		this.good_food_img = good_food_img;
	}

	@Override
	public String toString() {
		return "GoodfoodVO[good_food_cd=" + good_food_cd + ", good_food_name=" + good_food_name + ", sick_cd=" + sick_cd + ",good_food_img="
				+ good_food_img + "]";
	}
}
