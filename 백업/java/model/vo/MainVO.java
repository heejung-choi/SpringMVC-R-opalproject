package model.vo;

public class MainVO {
	// 20200513 jung OpalVO 생성

	// 20200513 jung Customer table
	// 고객 코드
	private String custCd;
	// 고객 이름
	private String custName;
	// 고객 아이디
	private String custId;
	// 고객 비밀번호
	private String custPw;
	// 고객 성별
	private String custGender;
	// 고객 이메일
	private String custEmail;
	// 고객 전화번호
	private String custPnum;
	// 고객 주소
	private String custAddress;
	// 추천인 고객 아이디
	private String recoCustId;

	// 20200513 jung Eco table
	// 친환경
	// 친환경 코드
	private String ecoCd;
	// 친환경 이름
	private String ecoName;

	// 20200513 jung Farm table
	// 농가 코드
	private String farmCd;
	// 농가 이름
	private String farmName;
	// 농가 주소
	private String farmAddress;
	// 농가 소개
	private String farmContent;
	// 파트너 코드
	private String partCd;
	// 친환경 코드
	// private String ecoCd;
	// Eco table 변수와 겹치므로 1개만 생성
	// 농가 전화번호
	private String farmPnum;

	// 20200513 jung Menu table
	// 식단 코드
	private String menuCd;
	// 식단 이름
	private String menuName;
	// 식단 소개
	private String menuContent;

	// 20200513 jung Order table
	// 고객 코드
	// private String custCd;
	// 위 테이블의 변수와 겹치므로 1개만 생성
	// 주문 코드
	private String orderCd;
	// 주문 날짜
	private String orderDate;
	// 상품 코드
	private String productCd;

	// 20200513 jung Package table
	// 패키지 코드
	private String packCd;
	// 패키지 이름
	private String packName;
	// 패키지 소개
	private String packContent;
	// 패키지 가격
	private Integer packPrice;

	// 20200513 jung Partner table
	// 파트너 코드
	// private String partCd;
	// 위의 테이블과 겹쳐서 1개만 생성
	// 파트너 이름
	private String partName;
	// 파트너 아이디
	private String partId;
	// 파트너 비밀번호
	private String partPw;
	// 파트너 성별
	private String partGender;
	// 파트너 이메일
	private String partEmail;
	// 파트너 전화번호
	private String partPnum;
	// 파트너 주소
	private String partAddress;
	// 추천인 파트너 아이디
	private String recoPartId;

	// 20200513 jung PMenu table
	// FK로만 구성된 테이블로 겹쳐서 생성 안함

	// 20200513 jung PRecipe table
	// 상품 코드
	// private String productCd;
	// 레시피 코드
	private String recipeCd;
	// 레시피 업데이트일
	private String recipeUpdate;

	// 20200513 jung Product table
	// 상품 코드
	// private String productCd;
	// 위의 테이블과 겹쳐서 1개만 생성
	// 상품 이름
	private String productName;
	// 상품 소개
	private String productContent;
	// 상품 가격
	private Integer productPrice;
	// 농가 코드
	// private String farmCd;
	// 위의 테이블과 겹쳐서 1개만 생성
	// 상품 수
	private Integer productSu;

	// 20200513 jung Recipe table
	// 레시피 코드
	// private String recipeCd;
	// 위의 테이블과 겹쳐서 1개만 생성
	// 레시피 이름
	private String recipeName;
	// 레시피 소개
	private String recipeContent;

	// 20200513 jung Regular table
	// 상품 코드
	// private String productCd;
	// 패키지 코드
	// private String packCd;
	// 구독 날짜
	private String regularDate;
	// 구독 코드
	private String regularCd;

	// 20200513 jung sickfood table
	// 음식 코드
	private String foodCd;
	// 질병 코드
	private String sickCd;
	// 음식 이름
	private String foodName;

	// 20200513 jung sick table
	// 질병 코드
	// private String sickCd;
	// 위의 테이블과 겹쳐서 1개만 생성
	// 질병 이름
	private String sickName;
	// 관리자 코드
	private String superCd;
	public String getCustCd() {
		return custCd;
	}
	public void setCustCd(String custCd) {
		this.custCd = custCd;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getCustPw() {
		return custPw;
	}
	public void setCustPw(String custPw) {
		this.custPw = custPw;
	}
	public String getCustGender() {
		return custGender;
	}
	public void setCustGender(String custGender) {
		this.custGender = custGender;
	}
	public String getCustEmail() {
		return custEmail;
	}
	public void setCustEmail(String custEmail) {
		this.custEmail = custEmail;
	}
	public String getCustPnum() {
		return custPnum;
	}
	public void setCustPnum(String custPnum) {
		this.custPnum = custPnum;
	}
	public String getCustAddress() {
		return custAddress;
	}
	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}
	public String getRecoCustId() {
		return recoCustId;
	}
	public void setRecoCustId(String recoCustId) {
		this.recoCustId = recoCustId;
	}
	public String getEcoCd() {
		return ecoCd;
	}
	public void setEcoCd(String ecoCd) {
		this.ecoCd = ecoCd;
	}
	public String getEcoName() {
		return ecoName;
	}
	public void setEcoName(String ecoName) {
		this.ecoName = ecoName;
	}
	public String getFarmCd() {
		return farmCd;
	}
	public void setFarmCd(String farmCd) {
		this.farmCd = farmCd;
	}
	public String getFarmName() {
		return farmName;
	}
	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}
	public String getFarmAddress() {
		return farmAddress;
	}
	public void setFarmAddress(String farmAddress) {
		this.farmAddress = farmAddress;
	}
	public String getFarmContent() {
		return farmContent;
	}
	public void setFarmContent(String farmContent) {
		this.farmContent = farmContent;
	}
	public String getPartCd() {
		return partCd;
	}
	public void setPartCd(String partCd) {
		this.partCd = partCd;
	}
	public String getFarmPnum() {
		return farmPnum;
	}
	public void setFarmPnum(String farmPnum) {
		this.farmPnum = farmPnum;
	}
	public String getMenuCd() {
		return menuCd;
	}
	public void setMenuCd(String menuCd) {
		this.menuCd = menuCd;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuContent() {
		return menuContent;
	}
	public void setMenuContent(String menuContent) {
		this.menuContent = menuContent;
	}
	public String getOrderCd() {
		return orderCd;
	}
	public void setOrderCd(String orderCd) {
		this.orderCd = orderCd;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getProductCd() {
		return productCd;
	}
	public void setProductCd(String productCd) {
		this.productCd = productCd;
	}
	public String getPackCd() {
		return packCd;
	}
	public void setPackCd(String packCd) {
		this.packCd = packCd;
	}
	public String getPackName() {
		return packName;
	}
	public void setPackName(String packName) {
		this.packName = packName;
	}
	public String getPackContent() {
		return packContent;
	}
	public void setPackContent(String packContent) {
		this.packContent = packContent;
	}
	public Integer getPackPrice() {
		return packPrice;
	}
	public void setPackPrice(Integer packPrice) {
		this.packPrice = packPrice;
	}
	public String getPartName() {
		return partName;
	}
	public void setPartName(String partName) {
		this.partName = partName;
	}
	public String getPartId() {
		return partId;
	}
	public void setPartId(String partId) {
		this.partId = partId;
	}
	public String getPartPw() {
		return partPw;
	}
	public void setPartPw(String partPw) {
		this.partPw = partPw;
	}
	public String getPartGender() {
		return partGender;
	}
	public void setPartGender(String partGender) {
		this.partGender = partGender;
	}
	public String getPartEmail() {
		return partEmail;
	}
	public void setPartEmail(String partEmail) {
		this.partEmail = partEmail;
	}
	public String getPartPnum() {
		return partPnum;
	}
	public void setPartPnum(String partPnum) {
		this.partPnum = partPnum;
	}
	public String getPartAddress() {
		return partAddress;
	}
	public void setPartAddress(String partAddress) {
		this.partAddress = partAddress;
	}
	public String getRecoPartId() {
		return recoPartId;
	}
	public void setRecoPartId(String recoPartId) {
		this.recoPartId = recoPartId;
	}
	public String getRecipeCd() {
		return recipeCd;
	}
	public void setRecipeCd(String recipeCd) {
		this.recipeCd = recipeCd;
	}
	public String getRecipeUpdate() {
		return recipeUpdate;
	}
	public void setRecipeUpdate(String recipeUpdate) {
		this.recipeUpdate = recipeUpdate;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductContent() {
		return productContent;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	public Integer getProductSu() {
		return productSu;
	}
	public void setProductSu(Integer productSu) {
		this.productSu = productSu;
	}
	public String getRecipeName() {
		return recipeName;
	}
	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}
	public String getRecipeContent() {
		return recipeContent;
	}
	public void setRecipeContent(String recipeContent) {
		this.recipeContent = recipeContent;
	}
	public String getRegularDate() {
		return regularDate;
	}
	public void setRegularDate(String regularDate) {
		this.regularDate = regularDate;
	}
	public String getRegularCd() {
		return regularCd;
	}
	public void setRegularCd(String regularCd) {
		this.regularCd = regularCd;
	}
	public String getFoodCd() {
		return foodCd;
	}
	public void setFoodCd(String foodCd) {
		this.foodCd = foodCd;
	}
	public String getSickCd() {
		return sickCd;
	}
	public void setSickCd(String sickCd) {
		this.sickCd = sickCd;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getSickName() {
		return sickName;
	}
	public void setSickName(String sickName) {
		this.sickName = sickName;
	}
	public String getSuperCd() {
		return superCd;
	}
	public void setSuperCd(String superCd) {
		this.superCd = superCd;
	}

	// 20200513 jung super table
	// FK로만 구성된 테이블로 겹쳐서 생성 안함

}
