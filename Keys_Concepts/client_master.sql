CREATE TABLE CLIENT_MASTER (
  CLIENT_NO VARCHAR2(6) PRIMARY KEY,
  CLIENT_NAME VARCHAR2(20),
  CITY VARCHAR2(15),
  STATE VARCHAR2(15),
  PIN NUMBER(6),
  BAL_DUE NUMBER(10,2) NOT NULL
);

INSERT INTO CLIENT_MASTER (CLIENT_NO, CLIENT_NAME, CITY, PIN, STATE, BAL_DUE) VALUES
('0001', 'Ivan', 'Bombay', 400057, 'Maharashtra', 15000),
('0002', 'Vandura', 'Madras', 980001, 'Tamil Nadu', 0),
('0003', 'Pramod', 'Bombay', 400057, 'Maharashtra', 5000),
('0004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0),
('0005', 'Ravi', 'Delhi', 100001, NULL, 2000),
('0006', 'Rukmini', 'Bombay', 900050, 'Maharashtra', 0);

SELECT * FROM CLIENT_MASTER;
