-- Stored Procedures

CREATE PROCEDURE large_salaries()
SELECT *
FROM parks_and_recreation.employee_salarylarge_salaries
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries4();


DELIMITER $$
CREATE PROCEDURE large_salaries3(employee_id_param INT)
BEGIN
	SELECT salary
	FROM parks_and_recreation.employee_salary
	WHERE employee_id = employee_id_param;
END $$
DELIMITER ;

CALL large_salaries3(1);