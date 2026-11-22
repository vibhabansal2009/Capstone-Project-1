CREATE TABLE IF NOT EXISTS Employee (
    id INTEGER,
    name TEXT,
    department TEXT,
    role TEXT,
    salary REAL,
    rating TEXT
);

INSERT INTO Employee (id, name, department, role, salary, rating)
VALUES
    (1, 'Alice', 'Engineering', 'Developer', 85000.0, 'A'),
    (2, 'Bob', 'Marketing', 'Analyst', 62000.0, 'B'),
    (3, 'Charlie', 'Engineering', 'Lead', 110000.0, 'A'),
    (4, 'Diana', 'Sales', 'Manager', 75000.0, 'B'),
    (5, 'Evan', 'HR', 'Specialist', 58000.0, ''),
    (6, 'Fiona', 'Marketing', 'Manager', 80000.0, 'A'),
    (7, 'George', 'Sales', 'Associate', 50000.0, 'C'),
    (8, 'Hannah', 'Engineering', 'Developer', 90000.0, 'A'),
    (9, 'Ian', 'HR', 'Manager', 82000.0, 'B');

SELECT DISTINCT department
FROM Employee;

SELECT DISTINCT role
FROM Employee;

SELECT *
FROM Employee
WHERE department = 'Engineering';

SELECT *
FROM Employee
WHERE salary >= 75000.0;

SELECT *
FROM Employee
WHERE department = 'Engineering'
AND salary >= 85000.0;

SELECT *
FROM Employee
WHERE salary = 80000.0;

SELECT *
FROM Employee
WHERE name LIKE '%an%';

SELECT *
FROM Employee
WHERE department IN ('Engineering', 'Marketing', 'Sales');

SELECT *
FROM Employee
WHERE rating = '' OR rating IS NULL;

SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 4;