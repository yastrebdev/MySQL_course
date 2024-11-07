-- GROUP BY

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- ORDER BY

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC
;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4
;