-- Active: 1709469253386@@127.0.0.1@5432@postgres

SHOW timezone;

SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timeZ VALUES('2022-01-01 10:45:00', '2022-01-01 10:45:00');

SELECT * from timeZ;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'YYYY-MM-DD');

SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract(YEAR FROM '2022-01-01'::date);