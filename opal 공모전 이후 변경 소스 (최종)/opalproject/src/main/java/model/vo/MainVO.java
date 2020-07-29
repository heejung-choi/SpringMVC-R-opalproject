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

   // 20200513 jung super table
   // FK로만 구성된 테이블로 겹쳐서 생성 안함

}