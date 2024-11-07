-- CTEs

WITH CTE_Example (gender, avg_sal, max_sal, min_sal, count_sal) AS
(
SELECT gender, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

SELECT AVG(avg_sal)
FROM (
SELECT gender,
AVG(salary) avg_sal,
MAX(salary) max_sal,
MIN(salary) min_sal,
COUNT(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery
;

WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM parks_and_recreation.employee_demographics dem
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary sal
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;