package model.vo;

public class SickVO {
//20200528 SickVO생성
	// 질병데이터

	// 질병 코드
	private String sick_cd;
	// 질병 이름
	private String sick_name;
	// 관리자 코드
	private String super_cd;

	public String getSick_cd() {
		return sick_cd;
	}

	public void setSick_cd(String sick_cd) {
		this.sick_cd = sick_cd;
	}

	public String getSick_name() {
		return sick_name;
	}

	public void setSick_name(String sick_name) {
		this.sick_name = sick_name;
	}

	public String getSuper_cd() {
		return super_cd;
	}

	public void setSuper_cd(String super_cd) {
		this.super_cd = super_cd;
	}

	@Override
	public String toString() {
		return "SickVO[sick_cd=" + sick_cd + ", sick_name=" + sick_name + ", super_cd=" + super_cd + "]";
	}

}