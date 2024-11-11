# Assignment - 2

#### 1. Make client_no primary key in client_master.
```
ALTER TABLE CLIENT_MASTER
MODIFY CLIENT_NO INT PRIMARY KEY;
```

#### 2. Add new column phone_number in client_master table.
```
ALTER TABLE CLIENT_MASTER
ADD PHONE_NUMBER NUMBER(20) NOT NULL;
```

##### 3. Add not null constraint in product master with columns : description, profit_percent, sellprice,costprice
```
ALTER TABLE PRODUCT_MASTER
MODIFY DESCRIPTION VARCHAR2(6) NOT NULL;

ALTER TABLE PRODUCT_MASTER
MODIFY PRODIT_PERCENT NUMBER(10) NOT NULL;

ALTER TABLE PRODUCT_MASTER
MODIFY SELL_PRICE NUMBER(10) NOT NULL;

ALTER TABLE PRODUCT_MASTER
MODIFY COST_PRICE NUMBER(10) NOT NULL;
```

##### 4. Change size of client_no field in client_master.
```
ALTER TABLE CLIENT_MASTER
MODIFY CLIENT_NO INT(6) PRIMARY KEY;
```
##### 5. Add check constraint to product_master such that sellprice is always greater than costprice.
```
ALTER TABLE PRODUCT_MASTER
MODIFY SELL_PRICE NUMBER(10) CHECK(SELL_PRICE > COST_PRICE);
```

##### 6. Select produc_no,description where profit percent is between 20 and 30 both inclusive.
```
SELECT PRODUCT_NO, DESCRIPTION
FROM PRODUCT_MASTER
WHERE PROFIT_PERCENT IN BETWEEN 20 AND 30;
```
