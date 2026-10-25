-- UPPGIFT 0: Skapa employees-tabellen

DROP TABLE employees;

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    salary NUMBER(10, 2),
    department VARCHAR2(50)
);

INSERT INTO employees VALUES (1, 'John', 'Doe', 35000, 'IT');
INSERT INTO employees VALUES (2, 'Jane', 'Smith', 45000, 'HR');
INSERT INTO employees VALUES (3, 'Mike', 'Johnson', 55000, 'IT');
INSERT INTO employees VALUES (4, 'Emily', 'Davis', 38000, 'Sales');
INSERT INTO employees VALUES (5, 'Chris', 'Brown', 42000, 'IT');
INSERT INTO employees VALUES (6, 'Sarah', 'Wilson', 60000, 'HR');
INSERT INTO employees VALUES (7, 'David', 'Taylor', 48000, 'Sales');
INSERT INTO employees VALUES (8, 'Laura', 'Martinez', 39000, 'IT');
INSERT INTO employees VALUES (9, 'James', 'Anderson', 52000, 'Sales');
INSERT INTO employees VALUES (10, 'Anna', 'Thomas', 41000, 'HR');

COMMIT;

-- Beskriv tabellen
DESC employees;

-- Visa all data
SELECT * FROM employees;

-- UPPGIFT 1: Utforska employees-datan

-- a) Räkna antalet rader
SELECT COUNT(*) AS antal_rader FROM employees;

-- b) Välj de fem översta raderna
SELECT * FROM employees FETCH FIRST 5 ROWS ONLY;

-- c) Välj de översta 10% av raderna
SELECT * FROM employees FETCH FIRST 10 PERCENT ROWS ONLY;

-- d) Hitta alla förnamn och deras lön för de med lön under 40k
SELECT first_name, salary FROM employees WHERE salary < 40000;

-- e) Hitta alla rader med lön mellan 40k och 50k, sortera på högsta lön
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 50000 ORDER BY salary DESC;

EXIT;

