-- Active: 1709469253386@@127.0.0.1@5432@postgres

CREATE FUNCTION get_employee_name() RETURNS VARCHAR 
LANGUAGE SQL AS 
$$
	SELECT employee_name FROM employees
$$; 

SELECT get_employee_name ()

CREATE FUNCTION delete_employee(id INT) RETURNS void 
LANGUAGE SQL AS 
$$
	DELETE FROM employees WHERE employee_id = id;
$$; 


SELECT * FROM employees;

SELECT delete_employee(1)