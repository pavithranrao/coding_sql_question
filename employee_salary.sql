WITH avg_salary as
  ( SELECT pay_date, department_id, avg(amount) AS salary
   FROM employee e
   JOIN salary s ON e.employee_id = s.employee_id
   GROUP BY pay_date, department_id),
     avg_monthly AS
  ( SELECT pay_date,
           avg(amount) AS salary
   FROM employee e
   JOIN salary s ON e.employee_id = s.employee_id
   GROUP BY pay_date)
SELECT substr(a.pay_date, 1, 7) AS pay_month,
       a.department_id,
       CASE
           WHEN a.salary > b.salary THEN 'Higher'
           WHEN a.salary < b.salary THEN 'Lower'
           ELSE 'Same'
       END AS comparison
FROM avg_salary a
JOIN avg_monthly b ON a.pay_date = b.pay_date;