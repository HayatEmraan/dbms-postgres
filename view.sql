-- Active: 1709469253386@@127.0.0.1@5432@postgres

CREATE OR REPLACE VIEW employee_avg_salary AS SELECT department_name, AVG(salary) AS avg_salary FROM employees GROUP BY department_name;


DROP VIEW employee_avg_salary;

SELECT * FROM employee_avg_salary;