-- Active: 1709469253386@@127.0.0.1@5432@postgres

SELECT country, AVG(age) FROM students GROUP BY country HAVING AVG(age) > 22;


SELECT extract(YEAR FROM dob), count(*) FROM students GROUP BY extract(YEAR FROM dob);