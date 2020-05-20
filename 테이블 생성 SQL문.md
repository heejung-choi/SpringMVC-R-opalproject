# 테이블 생성 SQL문

```sql

-- eco Table Create SQL
CREATE TABLE eco
(
    eco_cd      VARCHAR2(20)    NOT NULL, 
    eco_name    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT ECO_PK PRIMARY KEY (eco_cd)
)
/

COMMENT ON TABLE eco IS '친환경'
/

COMMENT ON COLUMN eco.eco_cd IS '친환경 코드'
/

COMMENT ON COLUMN eco.eco_name IS '친환경 이름'
/


-- eco Table Create SQL
CREATE TABLE partner
(
    part_cd         VARCHAR2(20)    NOT NULL, 
    part_name       VARCHAR2(20)    NOT NULL, 
    part_id         VARCHAR2(20)    NOT NULL, 
    part_pw         VARCHAR2(20)    NOT NULL, 
    part_gender     VARCHAR2(20)    NOT NULL, 
    part_email      VARCHAR2(20)    NOT NULL, 
    part_pnum       VARCHAR2(20)    NOT NULL, 
    part_address    VARCHAR2(20)    NOT NULL, 
    reco_part_id    VARCHAR2(20)    NULL, 
    CONSTRAINT PARTNER_PK PRIMARY KEY (part_cd)
)
/

COMMENT ON TABLE partner IS '파트너'
/

COMMENT ON COLUMN partner.part_cd IS '파트너 코드'
/

COMMENT ON COLUMN partner.part_name IS '파트너 이름'
/

COMMENT ON COLUMN partner.part_id IS '파트너 아이디'
/

COMMENT ON COLUMN partner.part_pw IS '파트너 비밀번호'
/

COMMENT ON COLUMN partner.part_gender IS '파트너 성별'
/

COMMENT ON COLUMN partner.part_email IS '파트너 이메일'
/

COMMENT ON COLUMN partner.part_pnum IS '파트너 전화번호'
/

COMMENT ON COLUMN partner.part_address IS '파트너 주소'
/

COMMENT ON COLUMN partner.reco_part_id IS '추천인 파트너 아이디'
/


-- eco Table Create SQL
CREATE TABLE farm
(
    farm_cd         VARCHAR2(20)     NOT NULL, 
    farm_name       VARCHAR2(20)     NOT NULL, 
    farm_address    VARCHAR2(20)     NOT NULL, 
    farm_content    VARCHAR2(100)    NOT NULL, 
    part_cd         VARCHAR2(20)     NOT NULL, 
    eco_cd          VARCHAR2(20)     NOT NULL, 
    farm_pnum       VARCHAR2(20)     NOT NULL, 
    CONSTRAINT FARM_PK PRIMARY KEY (farm_cd)
)
/

COMMENT ON TABLE farm IS '농가'
/

COMMENT ON COLUMN farm.farm_cd IS '농가 코드'
/

COMMENT ON COLUMN farm.farm_name IS '농가 이름'
/

COMMENT ON COLUMN farm.farm_address IS '농가 주소'
/

COMMENT ON COLUMN farm.farm_content IS '농가 소개'
/

COMMENT ON COLUMN farm.part_cd IS '파트너 코드'
/

COMMENT ON COLUMN farm.eco_cd IS '친환경 코드'
/

COMMENT ON COLUMN farm.farm_pnum IS '농가 전화번호'
/

ALTER TABLE farm
    ADD CONSTRAINT FK_farm_part_cd_partner_part_c FOREIGN KEY (part_cd)
        REFERENCES partner (part_cd)
/

ALTER TABLE farm
    ADD CONSTRAINT FK_farm_eco_cd_eco_eco_cd FOREIGN KEY (eco_cd)
        REFERENCES eco (eco_cd)
/


-- eco Table Create SQL
CREATE TABLE product
(
    product_cd         VARCHAR2(20)     NOT NULL, 
    product_name       VARCHAR2(20)     NOT NULL, 
    product_content    VARCHAR2(100)    NOT NULL, 
    product_price      INT              NOT NULL, 
    farm_cd            VARCHAR2(20)     NOT NULL, 
    product_su         INT              NOT NULL, 
    CONSTRAINT PRODUCT_PK PRIMARY KEY (product_cd)
)
/

COMMENT ON TABLE product IS '상품'
/

COMMENT ON COLUMN product.product_cd IS '상품 코드'
/

COMMENT ON COLUMN product.product_name IS '상품 이름'
/

COMMENT ON COLUMN product.product_content IS '상품 소개'
/

COMMENT ON COLUMN product.product_price IS '상품 가격'
/

COMMENT ON COLUMN product.farm_cd IS '농가 코드'
/

COMMENT ON COLUMN product.product_su IS '상품 수'
/

ALTER TABLE product
    ADD CONSTRAINT FK_product_farm_cd_farm_farm_c FOREIGN KEY (farm_cd)
        REFERENCES farm (farm_cd)
/


-- eco Table Create SQL
CREATE TABLE sick
(
    sick_cd      VARCHAR2(20)    NOT NULL, 
    sick_name    VARCHAR2(20)    NOT NULL, 
    super_cd     VARCHAR2(20)    NOT NULL, 
    CONSTRAINT SICK_PK PRIMARY KEY (sick_cd)
)
/

COMMENT ON TABLE sick IS '질병데이터'
/

COMMENT ON COLUMN sick.sick_cd IS '질병 코드'
/

COMMENT ON COLUMN sick.sick_name IS '질병 이름'
/

COMMENT ON COLUMN sick.super_cd IS '관리자 코드'
/


-- eco Table Create SQL
CREATE TABLE super
(
    super_cd    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT SUPER_PK PRIMARY KEY (super_cd)
)
/

COMMENT ON TABLE super IS '관리자'
/

COMMENT ON COLUMN super.super_cd IS '관리자 코드'
/

ALTER TABLE super
    ADD CONSTRAINT FK_super_super_cd_sick_super_c FOREIGN KEY (super_cd)
        REFERENCES sick (super_cd)
/


-- eco Table Create SQL
CREATE TABLE customer
(
    cust_cd         VARCHAR2(20)     NOT NULL, 
    cust_name       VARCHAR2(20)     NOT NULL, 
    cust_id         VARCHAR2(20)     NOT NULL, 
    cust_pw         VARCHAR2(20)     NOT NULL, 
    cust_gender     VARCHAR2(20)     NOT NULL, 
    cust_email      VARCHAR2(20)     NOT NULL, 
    cust_pnum       VARCHAR2(20)     NOT NULL, 
    cust_address    VARCHAR2(100)    NOT NULL, 
    reco_cust_id    VARCHAR2(20)     NOT NULL, 
    CONSTRAINT CUSTOMER_PK PRIMARY KEY (cust_cd)
)
/

COMMENT ON TABLE customer IS '고객'
/

COMMENT ON COLUMN customer.cust_cd IS '고객 코드'
/

COMMENT ON COLUMN customer.cust_name IS '고객 이름'
/

COMMENT ON COLUMN customer.cust_id IS '고객 아이디'
/

COMMENT ON COLUMN customer.cust_pw IS '고객 비밀번호'
/

COMMENT ON COLUMN customer.cust_gender IS '고객 성별'
/

COMMENT ON COLUMN customer.cust_email IS '고객 이메일'
/

COMMENT ON COLUMN customer.cust_pnum IS '고객 전화번호'
/

COMMENT ON COLUMN customer.cust_address IS '고객 주소'
/

COMMENT ON COLUMN customer.reco_cust_id IS '추천인 고객 아이디'
/


-- eco Table Create SQL
CREATE TABLE recipe
(
    recipe_cd         VARCHAR2(20)     NOT NULL, 
    recipe_name       VARCHAR2(20)     NOT NULL, 
    recipe_content    VARCHAR2(100)    NOT NULL, 
    CONSTRAINT RECIPE_PK PRIMARY KEY (recipe_cd)
)
/

COMMENT ON TABLE recipe IS '레시피'
/

COMMENT ON COLUMN recipe.recipe_cd IS '레시피 코드'
/

COMMENT ON COLUMN recipe.recipe_name IS '레시피 이름'
/

COMMENT ON COLUMN recipe.recipe_content IS '레시피 소개'
/


-- eco Table Create SQL
CREATE TABLE menu
(
    menu_cd         VARCHAR2(20)     NOT NULL, 
    menu_name       VARCHAR2(20)     NOT NULL, 
    menu_content    VARCHAR2(100)    NOT NULL, 
    CONSTRAINT MENU_PK PRIMARY KEY (menu_cd)
)
/

COMMENT ON TABLE menu IS '식단추천'
/

COMMENT ON COLUMN menu.menu_cd IS '식단 코드'
/

COMMENT ON COLUMN menu.menu_name IS '식단 이름'
/

COMMENT ON COLUMN menu.menu_content IS '식단 소개'
/


-- eco Table Create SQL
CREATE TABLE package
(
    pack_cd         VARCHAR2(20)     NOT NULL, 
    pack_name       VARCHAR2(20)     NOT NULL, 
    pack_content    VARCHAR2(100)    NOT NULL, 
    pack_price      INT              NOT NULL, 
    CONSTRAINT PACKAGE_PK PRIMARY KEY (pack_cd)
)
/

COMMENT ON TABLE package IS '패키지'
/

COMMENT ON COLUMN package.pack_cd IS '패키지 코드'
/

COMMENT ON COLUMN package.pack_name IS '패키지 이름'
/

COMMENT ON COLUMN package.pack_content IS '패키지 소개'
/

COMMENT ON COLUMN package.pack_price IS '패키지 가격'
/


-- eco Table Create SQL
CREATE TABLE order
(
    cust_cd       VARCHAR2(20)    NOT NULL, 
    order_cd      VARCHAR2(20)    NOT NULL, 
    order_date    DATE            NOT NULL, 
    product_cd    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT ORDER_PK PRIMARY KEY (order_cd)
)
/

COMMENT ON TABLE order IS '주문'
/

COMMENT ON COLUMN order.cust_cd IS '고객 코드'
/

COMMENT ON COLUMN order.order_cd IS '주문 코드'
/

COMMENT ON COLUMN order.order_date IS '주문 날짜'
/

COMMENT ON COLUMN order.product_cd IS '상품 코드'
/

ALTER TABLE order
    ADD CONSTRAINT FK_order_cust_cd_customer_cust FOREIGN KEY (cust_cd)
        REFERENCES customer (cust_cd)
/

ALTER TABLE order
    ADD CONSTRAINT FK_order_product_cd_product_pr FOREIGN KEY (product_cd)
        REFERENCES product (product_cd)
/


-- eco Table Create SQL
CREATE TABLE regular
(
    product_cd      VARCHAR2(20)    NOT NULL, 
    pack_cd         VARCHAR2(20)    NOT NULL, 
    regular_date    DATE            NOT NULL, 
    regular_cd      VARCHAR2(20)    NOT NULL
)
/

COMMENT ON TABLE regular IS '정기구독'
/

COMMENT ON COLUMN regular.product_cd IS '상품 코드'
/

COMMENT ON COLUMN regular.pack_cd IS '패키지 코드'
/

COMMENT ON COLUMN regular.regular_date IS '구독 날짜'
/

COMMENT ON COLUMN regular.regular_cd IS '구독 코드'
/

ALTER TABLE regular
    ADD CONSTRAINT FK_regular_product_cd_product_ FOREIGN KEY (product_cd)
        REFERENCES product (product_cd)
/

ALTER TABLE regular
    ADD CONSTRAINT FK_regular_pack_cd_package_pac FOREIGN KEY (pack_cd)
        REFERENCES package (pack_cd)
/


-- eco Table Create SQL
CREATE TABLE p_recipe
(
    product_cd       VARCHAR2(20)    NOT NULL, 
    recipe_cd        VARCHAR2(20)    NOT NULL, 
    recipe_update    DATE            NOT NULL
)
/

COMMENT ON TABLE p_recipe IS '레시피 상품'
/

COMMENT ON COLUMN p_recipe.product_cd IS '상품 코드'
/

COMMENT ON COLUMN p_recipe.recipe_cd IS '레시피 코드'
/

COMMENT ON COLUMN p_recipe.recipe_update IS '레시피 업데이트일'
/

ALTER TABLE p_recipe
    ADD CONSTRAINT FK_p_recipe_product_cd_product FOREIGN KEY (product_cd)
        REFERENCES product (product_cd)
/

ALTER TABLE p_recipe
    ADD CONSTRAINT FK_p_recipe_recipe_cd_recipe_r FOREIGN KEY (recipe_cd)
        REFERENCES recipe (recipe_cd)
/


-- eco Table Create SQL
CREATE TABLE p_menu
(
    menu_cd       VARCHAR2(20)    NOT NULL, 
    product_cd    VARCHAR2(20)    NOT NULL
)
/

COMMENT ON TABLE p_menu IS '식단추천 상품'
/

COMMENT ON COLUMN p_menu.menu_cd IS '식단 코드'
/

COMMENT ON COLUMN p_menu.product_cd IS '상품 코드'
/

ALTER TABLE p_menu
    ADD CONSTRAINT FK_p_menu_menu_cd_menu_menu_cd FOREIGN KEY (menu_cd)
        REFERENCES menu (menu_cd)
/

ALTER TABLE p_menu
    ADD CONSTRAINT FK_p_menu_product_cd_product_p FOREIGN KEY (product_cd)
        REFERENCES product (product_cd)
/


-- eco Table Create SQL
CREATE TABLE c_super
(
    super_cd    VARCHAR2(20)    NOT NULL, 
    cust_cd     VARCHAR2(20)    NOT NULL
)
/

COMMENT ON TABLE c_super IS '고객관리'
/

COMMENT ON COLUMN c_super.super_cd IS '관리자 코드'
/

COMMENT ON COLUMN c_super.cust_cd IS '고객 코드'
/

ALTER TABLE c_super
    ADD CONSTRAINT FK_c_super_super_cd_super_supe FOREIGN KEY (super_cd)
        REFERENCES super (super_cd)
/

ALTER TABLE c_super
    ADD CONSTRAINT FK_c_super_cust_cd_customer_cu FOREIGN KEY (cust_cd)
        REFERENCES customer (cust_cd)
/


-- eco Table Create SQL
CREATE TABLE p_super
(
    super_cd    VARCHAR2(20)    NOT NULL, 
    part_cd     VARCHAR2(20)    NOT NULL
)
/

COMMENT ON TABLE p_super IS '파트너관리'
/

COMMENT ON COLUMN p_super.super_cd IS '관리자 코드'
/

COMMENT ON COLUMN p_super.part_cd IS '파트너 코드'
/

ALTER TABLE p_super
    ADD CONSTRAINT FK_p_super_super_cd_super_supe FOREIGN KEY (super_cd)
        REFERENCES super (super_cd)
/

ALTER TABLE p_super
    ADD CONSTRAINT FK_p_super_part_cd_partner_par FOREIGN KEY (part_cd)
        REFERENCES partner (part_cd)
/


-- eco Table Create SQL
CREATE TABLE sickfood
(
    food_cd      VARCHAR2(20)    NOT NULL, 
    sick_cd      VARCHAR2(20)    NOT NULL, 
    food_name    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT SICKFOOD_PK PRIMARY KEY (food_cd)
)
/

COMMENT ON TABLE sickfood IS '질병데이터음식'
/

COMMENT ON COLUMN sickfood.food_cd IS '음식 코드'
/

COMMENT ON COLUMN sickfood.sick_cd IS '질병 코드'
/

COMMENT ON COLUMN sickfood.food_name IS '음식 이름'
/

ALTER TABLE sickfood
    ADD CONSTRAINT FK_sickfood_sick_cd_super_supe FOREIGN KEY (sick_cd)
        REFERENCES super (super_cd)
/

ALTER TABLE sickfood
    ADD CONSTRAINT FK_sickfood_sick_cd_sick_sick_ FOREIGN KEY (sick_cd)
        REFERENCES sick (sick_cd)
/



```

