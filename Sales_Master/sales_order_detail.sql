CREATE TABLE SALES_ORDER_DETAILS (
    S_order_no VARCHAR2(6) CONSTRAINT fk_s_order_no REFERENCES SALES_ORDER(S_ORDER_No),
    Product_no VARCHAR2(6) CONSTRAINT fk_product_no REFERENCES PRODUCT_MASTER(Product_no),
    Qty_order NUMBER(8),
    Qty_disp NUMBER(8),
    Product_rate NUMBER(10,2),
    CONSTRAINT pk_sales_order_details PRIMARY KEY (S_order_no, Product_no)
);

INSERT INTO SALES_ORDER_DETAILS (S_order_no, Product_no, Qty_order, Qty_disp, Product_rate) VALUES
('019001', 'p00001', 4, 4, 525),
('019001', 'p07965', 2, 1, 8400),
('019001', 'p07885', 2, 1, 5250),
('019002', 'p00001', 10, 0, 525),
('046865', 'p07868', 3, 3, 3150),
('046865', 'p07885', 10, 10, 5250),
('019003', 'p00001', 4, 4, 1050),
('019003', 'p03453', 2, 2, 1050),
('046866', 'p06734', 1, 1, 12000),
('046866', 'p07965', 1, 0, 8400),
('010008', 'p07975', 1, 0, 1050),
('010008', 'p00001', 10, 5, 525);
