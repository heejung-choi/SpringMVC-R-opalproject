# 모든 SQL 생성문

```sql
-- 20200529 SQL 생성

-- super Table Create SQL
CREATE TABLE super
(
    super_cd      VARCHAR2(50)    NOT NULL, 
    super_name    VARCHAR2(50)    NULL, 
    CONSTRAINT SUPER_PK PRIMARY KEY (super_cd)
)
/

COMMENT ON TABLE super IS '관리자'
/

COMMENT ON COLUMN super.super_cd IS '관리자 코드'
/

COMMENT ON COLUMN super.super_name IS '관리자 이름'
/


-- super Table Create SQL
CREATE TABLE customer
(
    cust_cd                  VARCHAR2(50)     NOT NULL, 
    cust_name                VARCHAR2(50)     NOT NULL, 
    cust_id                  VARCHAR2(50)     NOT NULL, 
    cust_pw                  VARCHAR2(200)    NOT NULL, 
    cust_gender              VARCHAR2(50)     NOT NULL, 
    cust_email               VARCHAR2(50)     NOT NULL, 
    cust_pnum                VARCHAR2(50)     NOT NULL, 
    cust_address             VARCHAR2(200)    NOT NULL, 
    AUTHORITY                VARCHAR2(50)     NOT NULL, 
    cust_signup_date         VARCHAR2(200)    NOT NULL, 
    cust_info_update_date    VARCHAR2(200)    NOT NULL, 
    cust_birthday_date       DATE             NOT NULL, 
    enabled                  CHAR(1)          NOT NULL, 
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

COMMENT ON COLUMN customer.AUTHORITY IS 'd'
/

COMMENT ON COLUMN customer.cust_signup_date IS '고객 회원가입 날짜'
/

COMMENT ON COLUMN customer.cust_info_update_date IS '고객 정보 업데이트일 날짜'
/

COMMENT ON COLUMN customer.cust_birthday_date IS '고객 생년월일 날짜'
/

COMMENT ON COLUMN customer.enabled IS '활성화'
/


-- super Table Create SQL
CREATE TABLE sick
(
    sick_cd      VARCHAR2(50)    NOT NULL, 
    sick_name    VARCHAR2(50)    NOT NULL, 
    super_cd     VARCHAR2(50)    NOT NULL, 
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

ALTER TABLE sick
    ADD CONSTRAINT FK_sick_super_cd_super_super_c FOREIGN KEY (super_cd)
        REFERENCES super (super_cd)
/


-- super Table Create SQL
CREATE TABLE product
(
    product_cd         INT              NOT NULL, 
    product_name       VARCHAR2(50)     NOT NULL, 
    product_content    VARCHAR2(200)    NOT NULL, 
    product_price      INT              NOT NULL, 
    product_su         INT              NOT NULL, 
    product_url        VARCHAR2(200)    NULL, 
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

COMMENT ON COLUMN product.product_su IS '상품 수'
/

COMMENT ON COLUMN product.product_url IS '상품 이미지'
/


-- super Table Create SQL
CREATE TABLE cart
(
    cart_cd        INT             NOT NULL, 
    cust_cd        VARCHAR2(50)    NOT NULL, 
    product_cd     INT             NOT NULL, 
    cart_amount    INT             NOT NULL, 
    CONSTRAINT CART_PK PRIMARY KEY (cart_cd)
)
/

COMMENT ON TABLE cart IS '장바구니'
/

COMMENT ON COLUMN cart.cart_cd IS '장바구니 코드'
/

COMMENT ON COLUMN cart.cust_cd IS '고객 코드'
/

COMMENT ON COLUMN cart.product_cd IS '상품 코드'
/

COMMENT ON COLUMN cart.cart_amount IS '장바구니 수량'
/

ALTER TABLE cart
    ADD CONSTRAINT FK_cart_product_cd_product_pro FOREIGN KEY (product_cd)
        REFERENCES product (product_cd)
/

ALTER TABLE cart
    ADD CONSTRAINT FK_cart_cust_cd_customer_cust_ FOREIGN KEY (cust_cd)
        REFERENCES customer (cust_cd)
/


-- super Table Create SQL
CREATE TABLE order
(
    order_cd      VARCHAR2(50)    NOT NULL, 
    order_date    DATE            NOT NULL, 
    cart_cd       INT             NOT NULL, 
    CONSTRAINT ORDER_PK PRIMARY KEY (order_cd)
)
/

COMMENT ON TABLE order IS '주문'
/

COMMENT ON COLUMN order.order_cd IS '주문 코드'
/

COMMENT ON COLUMN order.order_date IS '주문 날짜'
/

COMMENT ON COLUMN order.cart_cd IS '장바구니 코드'
/

ALTER TABLE order
    ADD CONSTRAINT FK_order_cart_cd_cart_cart_cd FOREIGN KEY (cart_cd)
        REFERENCES cart (cart_cd)
/


-- super Table Create SQL
CREATE TABLE c_super
(
    super_cd    VARCHAR2(50)    NOT NULL, 
    cust_cd     VARCHAR2(50)    NOT NULL
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


-- super Table Create SQL
CREATE TABLE badfood
(
    food_cd      VARCHAR2(50)     NOT NULL, 
    food_name    VARCHAR2(50)     NOT NULL, 
    food_img     VARCHAR2(200)    NULL, 
    sick_cd      VARCHAR2(50)     NOT NULL, 
    CONSTRAINT BADFOOD_PK PRIMARY KEY (food_cd, sick_cd)
)
/

COMMENT ON TABLE badfood IS '나쁜음식'
/

COMMENT ON COLUMN badfood.food_cd IS '음식 코드'
/

COMMENT ON COLUMN badfood.food_name IS '음식 이름'
/

COMMENT ON COLUMN badfood.food_img IS '음식 사진'
/

COMMENT ON COLUMN badfood.sick_cd IS '질병 코드'
/

ALTER TABLE badfood
    ADD CONSTRAINT FK_badfood_sick_cd_sick_sick_c FOREIGN KEY (sick_cd)
        REFERENCES sick (sick_cd)
/


-- super Table Create SQL
CREATE TABLE goodfood
(
    food_cd      VARCHAR2(50)     NOT NULL, 
    food_name    VARCHAR2(50)     NOT NULL, 
    food_img     VARCHAR2(200)    NULL, 
    g_img        VARCHAR2(200)    NULL, 
    sick_cd      VARCHAR2(50)     NOT NULL, 
    CONSTRAINT GOODFOOD_PK PRIMARY KEY (food_cd, sick_cd)
)
/

COMMENT ON TABLE goodfood IS '좋은음식'
/

COMMENT ON COLUMN goodfood.food_cd IS '음식 코드'
/

COMMENT ON COLUMN goodfood.food_name IS '음식 이름'
/

COMMENT ON COLUMN goodfood.food_img IS '음식 사진'
/

COMMENT ON COLUMN goodfood.g_img IS '그래프 사진'
/

COMMENT ON COLUMN goodfood.sick_cd IS '질병 코드'
/

ALTER TABLE goodfood
    ADD CONSTRAINT FK_goodfood_sick_cd_sick_sick_ FOREIGN KEY (sick_cd)
        REFERENCES sick (sick_cd)
/



```

