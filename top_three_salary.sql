WITH rank_table AS
  ( SELECT d.name "Department",
           e.name "Employee",
           e.Salary,
           row_number() over (partition BY departmentid
                            ORDER BY salary DESC) "rw"
   FROM Employee e
   LEFT JOIN Department d ON d.id = e.departmentid)
SELECT Department,
       Employee,
       Salary
FROM rank_table
WHERE rw <= 3
ORDER BY rank_table.Department

with
	rank_table as
(select
    DepartmentId,
    name,
    salary,
    row_number() over (partition by DepartmentId order by salary desc) as row_num
 from
 	Employee)
 select
 	*
 from
 	rank_table join Department
    on Department.id = rank_table.DepartmentId
 order by
 	salary desc
 where
 	row_num <= 3