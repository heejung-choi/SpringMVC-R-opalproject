package model.vo;

import java.util.List;

public class SickfoodVO {
//20200526 sickfoodVO생성
	// 음식 코드
	private String food_cd;
	// 음식 이름
	private String food_name;
	// 질병 코드
	private String sick_cd;
	// 음식 이미지
	private String food_img;
	
	public List<SickfoodVO> list;

	public String getFood_cd() {
		return food_cd;
	}

	public void setFood_cd(String food_cd) {
		this.food_cd = food_cd;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public String getSick_cd() {
		return sick_cd;
	}

	public void setSick_cd(String sick_cd) {
		this.sick_cd = sick_cd;
	}

	public String getFood_img() {
		return food_img;
	}

	public void setFood_img(String food_img) {
		this.food_img = food_img;
	}

	

	@Override
	public String toString() {
		return "SickfoodVO[food_cd=" + food_cd + ", food_name=" + food_name + ", sick_cd=" + sick_cd + ",food_img="
				+ food_img + "]";
	}
}
