CREATE TABLE SALES_ORDER (
    S_ORDER_No VARCHAR2(6) CONSTRAINT pk_s_order PRIMARY KEY CHECK (S_ORDER_No LIKE 'O%'),
    S_ORDER_DATE DATE,
    CLIENT_NO NUMBER(25) CONSTRAINT fk_client_no REFERENCES CLIENT_MASTER(CLIENT_NO),
    SALESMAN_NO VARCHAR2(26) CONSTRAINT fk_salesman_no REFERENCES SALES_MASTER(SALESMAN_NO),
    DELIVERY_TYPE CHAR(1) DEFAULT 'F' CHECK (DELIVERY_TYPE IN ('P', 'F')),
    BILLED_YN CHAR(1) CHECK (BILLED_YN IN ('Y', 'N')),
    DELIVERY_DATE DATE CHECK (DELIVERY_DATE >= S_ORDER_DATE),
    ORDER_STATUS VARCHAR2(10) CHECK (ORDER_STATUS IN ('IN-PROCESS', 'FULFILLED', 'BACKORDER', 'CANCELLED'))
);

INSERT INTO SALES_ORDER (S_ORDER_No, S_ORDER_DATE, CLIENT_NO, DELIVERY_TYPE, BILLED_YN, SALESMAN_NO, DELIVERY_DATE, ORDER_STATUS)
VALUES 
('O19001', '12-Jan-96', 1, 'F', 'N', '50001', '20-Jan-96', 'IN-PROCESS'),
('O19002', '25-Jan-96', 2, 'P', 'N', '50002', '27-Jan-96', 'CANCELLED'),
('O16865', '18-Feb-96', 3, 'F', 'Y', '500003', '20-Feb-96', 'FULFILLED'),
('O19003', '03-Apr-96', 1, 'F', 'Y', '500001', '07-Apr-96', 'FULFILLED'),
('O46866', '20-May-96', 4, 'P', 'N', '500002', '22-May-96', 'CANCELLED'),
('O10008', '24-May-96', 5, 'F', 'N', '500004', '26-May-96', 'IN-PROCESS');