# Assignment 

##### 1. Make Client no primary key in client master
It can be done while creating the table Client_master, we can define 
```
CLIENT_NO  VARCHAR2(6) PRIMARY KEY,
```

##### 2. Add new Coloumn phone_number in client_master table
```
ALTER TABLE CLIENT_MASTER
ADD phone_number NUMBER(10),
```

#### 3. Add not null constraint in product master with coloumns: description, profit_percent, sellprice and costprice
```
ALTER TABLE PRODUCT_MASTER
MODIFY DESCRIPTION VARCHAR2(20) NOT NULL;

ALTER TABLE PRODUCT_MASTER
MODIFY PROFIT_PERCENT NUMBER(10) NOT NULL;

ALTER TABLE PRODUCT_MASTER
MODIFY SELL_PRICE NUMBER(10) NOT NULL;

ALTER TABLE PRODUCT_MASTER
MODIFY COST_PRICE NUMBER(10) NOT NULL;
```

#### 4. Change size of Client No in client_master
```
ALTER TABLE CLIENT_MASTER
MODIFY CLIENT_NO VARCHAR(50)
```

#### 5. Add check constraint to product master such that sell price is always greater than the cost price
```
ALTER TABLE PRODUCT_MASTER
MODIFY SELL_PRICE NUMBER(10) CHECK(SELL_PRICE > COST_PRICE)
```

#### 6. Select Product_no, description where profit_percent is between 20 and 30 both is inclusive
```
SELECT PRDUCT_NO, DESCRIPTION
FROM PRODUCT_MASTER
WHERE PROFIT_PERCENT IN BETWEEN 20 AND 30
```
