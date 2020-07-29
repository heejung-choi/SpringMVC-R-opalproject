package model.vo;

public class FarmVO {
	/*
	 * 2020.06.27 농가  Eunha*/


	private int farm_cd;
	private String farm_name;
	private String farm_pnum;
	private String farm_content;
	private int organic_cd;
	private int gap_cd;
	private String farm_url;
	
	
	public int getFarm_cd() {
		return farm_cd;
	}


	public void setFarm_cd(int farm_cd) {
		this.farm_cd = farm_cd;
	}


	public String getFarm_name() {
		return farm_name;
	}


	public void setFarm_name(String farm_name) {
		this.farm_name = farm_name;
	}


	public String getFarm_pnum() {
		return farm_pnum;
	}


	public void setFarm_pnum(String farm_pnum) {
		this.farm_pnum = farm_pnum;
	}


	public String getFarm_content() {
		return farm_content;
	}


	public void setFarm_content(String farm_content) {
		this.farm_content = farm_content;
	}


	public int getOrganic_cd() {
		return organic_cd;
	}


	public void setOrganic_cd(int organic_cd) {
		this.organic_cd = organic_cd;
	}


	public int getGap_cd() {
		return gap_cd;
	}


	public void setGap_cd(int gap_cd) {
		this.gap_cd = gap_cd;
	}


	public String getFarm_url() {
		return farm_url;
	}


	public void setFarm_url(String farm_url) {
		this.farm_url = farm_url;
	}


	@Override
	public String toString() {
		return "FarmVO [farm_cd=" + farm_cd + ", farm_name=" + farm_name + ", farm_pnum=" + farm_pnum + ", farm_content=" + farm_content + ", organic_cd="
				+ organic_cd + ", gap_cd=" + gap_cd + ", farm_url=" + farm_url +  "]";
	}
}
