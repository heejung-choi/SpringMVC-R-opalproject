package model.vo;

public class FarmVO {
	/*
	 * 2020.05.20 김동규 농장 VO 추가
	 * 농가 이름, 농가 아이디, 농가 비밀번호, 농가 이메일, 농가 주소, 농가 상세설명, 친환경 코드
	 * 농가 핸드폰 번
	 */
	private String farm_name;
	private String farm_id;
	private String farm_pw;
	private String farm_email;
	private String farm_address;
	private String farm_content;
	private String eco_cd;
	private String farm_pnum;
	private String farm_auth;
	
	public String getFarm_name() {
		return farm_name;
	}
	public void setFarm_name(String farm_name) {
		this.farm_name = farm_name;
	}
	public String getFarm_id() {
		return farm_id;
	}
	public void setFarm_id(String farm_id) {
		this.farm_id = farm_id;
	}
	public String getFarm_pw() {
		return farm_pw;
	}
	public void setFarm_pw(String farm_pw) {
		this.farm_pw = farm_pw;
	}
	public String getFarm_email() {
		return farm_email;
	}
	public void setFarm_email(String farm_email) {
		this.farm_email = farm_email;
	}
	public String getFarm_address() {
		return farm_address;
	}
	public void setFarm_address(String farm_address) {
		this.farm_address = farm_address;
	}
	public String getFarm_content() {
		return farm_content;
	}
	public void setFarm_content(String farm_content) {
		this.farm_content = farm_content;
	}
	public String getEco_cd() {
		return eco_cd;
	}
	public void setEco_cd(String eco_cd) {
		this.eco_cd = eco_cd;
	}
	public String getFarm_pnum() {
		return farm_pnum;
	}
	public void setFarm_pnum(String farm_pnum) {
		this.farm_pnum = farm_pnum;
	}
	public String getFarm_auth() {
		return farm_auth;
	}
	public void setFarm_auth(String farm_auth) {
		this.farm_auth = farm_auth;
	}
	
	@Override
	public String toString() {
		return "FarmVO [farm_name=" + farm_name + ", farm_id=" + farm_id + ", farm_pw=" + farm_pw + ", farm_email="
				+ farm_email + ", farm_address=" + farm_address + ", farm_content=" + farm_content + ", eco_cd="
				+ eco_cd + ", farm_pnum=" + farm_pnum + ", farm_auth=" + farm_auth + "]";
	}
}
