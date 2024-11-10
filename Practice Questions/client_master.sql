CREATE TABLE client_master(
	CLIENT_NO INT PRIMARY KEY,
  	CLIENT_NAME VARCHAR(50),
  	CITY VARCHAR(50),
  	PINCODE INT,
  	STATE VARCHAR(50),
  	BAL_DUE INT NOT NULL
);

INSERT INTO client_master
VALUES
(0001, "Ivan", "Bombay", 400057,"Maharastra", 15000 ),
(0002, "Vandura", "Madras", 980001,"Tamil Nadu", 0 ),
(0003, "Pramod", "Bombay", 400057,"Maharastra", 5000 ),
(0004, "Basu", "Bombay", 400056,"Maharastra", 0 ),
(0005, "Ravi", "Delhi", 100001,NULL, 2000 ),
(0006, "Rukmini", "Bombay", 900050,"Maharastra", 0);

SELECT * FROM client_master;
