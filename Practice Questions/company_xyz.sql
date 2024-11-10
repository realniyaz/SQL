CREATE DATABASE company_xyz;
CREATE DATABASE IF NOT EXISTS company_xyz;

CREATE TABLE employee_info(
	id INT PRIMARY KEY,
  	name VARCHAR(50),
  	salary INT NOT NULL
);

INSERT INTO employee_info
(id, name, salary)
VALUES
(101, "Niyaz", 85000),
(102, "Sahil", 95000),
(103, "Alex", 75000);

SELECT * FROM employee_info;
