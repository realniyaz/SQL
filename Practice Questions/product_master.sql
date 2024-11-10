CREATE TABLE product_master(
	PRODUCT_NO VARCHAR(50) PRIMARY KEY,
  	DESCRIPTION VARCHAR(50),
  	PROFIT_PERCENT FLOAT,
  	QTY_ON_HAND INT NOT NULL,
  	ORDER_LEVEL INT,
  	SELL_PRICE INT NOT NULL,
  	COST_PRICE INT NOT NULL
);

INSERT INTO product_master
VALUES
("POOOO1", "1.44 floppies", 5, 100, 20, 525, 500 ),
("P03453", "Monitors", 6, 10, 3, 12000, 11200 ),
("P06734", "Mouse",5, 20, 5, 1050, 500),
("P07865", "1.22 floppies", 5, 100, 20, 525, 500),
("P07868", "Keyboards", 2, 10, 3, 3150, 3000),
("P07885", "CD drive", 2.5,10,3, 5250, 5100 );

SELECT * FROM product_master;
