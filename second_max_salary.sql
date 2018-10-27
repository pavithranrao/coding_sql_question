-- SELECT
--  MAX(SALARY) AS SecondHighestSalary
-- FROM
--  EMPLOYEE
-- WHERE
--  Salary NOT IN (
--                  SELECT
--                      MAX(Salary)
--                  FROM
--                  Employee);
 -- LeetCode solution

SELECT ifnull (
                 (SELECT distinct(salary)
                  FROM employee
                  ORDER BY salary DESC LIMIT 1
                  OFFSET 1), NULL) AS SecondHighestSalary