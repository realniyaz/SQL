CREATE CLIENT_MASTER(
  CLIENT_NO VARCHAR2(6) PRIMARY KEY,
  CLIENT_NAME VARCHAR2(20),
  CITY VARCHAR2(15),
  STATE VARCHAR2(15),
  PIN INT(6),
  BAL_DUE INT(10,2) NOT NULL
);

INSERT INTO CLIENT_MASTER
VALUES
(0001, "Ivan", "Bombay", 400057,"Maharastra", 15000 ),
(0002, "Vandura", "Madras", 980001,"Tamil Nadu", 0 ),
(0003, "Pramod", "Bombay", 400057,"Maharastra", 5000 ),
(0004, "Basu", "Bombay", 400056,"Maharastra", 0 ),
(0005, "Ravi", "Delhi", 100001,NULL, 2000 ),
(0006, "Rukmini", "Bombay", 900050,"Maharastra", 0);

SELECT * FROM client_master;
