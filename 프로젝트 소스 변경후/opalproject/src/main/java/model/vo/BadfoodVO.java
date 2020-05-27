package model.vo;


public class BadfoodVO {
//20200526 BadfoodVO생성
	// 음식 코드
	private String bad_food_cd;
	// 음식 이름
	private String bad_food_name;
	// 질병 코드
	private String sick_cd;
	// 음식 이미지
	private String bad_food_img;

	public String getbad_food_cd() {
		return bad_food_cd;
	}

	public void setbad_food_cd(String bad_food_cd) {
		this.bad_food_cd = bad_food_cd;
	}

	public String getbad_food_name() {
		return bad_food_name;
	}

	public void setbad_food_name(String bad_food_name) {
		this.bad_food_name = bad_food_name;
	}

	public String getSick_cd() {
		return sick_cd;
	}

	public void setSick_cd(String sick_cd) {
		this.sick_cd = sick_cd;
	}

	public String getbad_food_img() {
		return bad_food_img;
	}

	public void setbad_food_img(String bad_food_img) {
		this.bad_food_img = bad_food_img;
	}

	@Override
	public String toString() {
		return "BadfoodVO[bad_food_cd=" + bad_food_cd + ", bad_food_name=" + bad_food_name + ", sick_cd=" + sick_cd + ",bad_food_img="
				+ bad_food_img + "]";
	}
}
