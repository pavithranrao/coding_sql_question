CREATE TABLE IF NOT EXISTS salary (id int, employee_id int, amount int, pay_date date);


CREATE TABLE IF NOT EXISTS employee (employee_id int, department_id int);

 TRUNCATE TABLE salary;


INSERT INTO salary (id, employee_id, amount, pay_date)
VALUES ('1',
        '1',
        '9000',
        '2017/03/31');


INSERT INTO salary (id, employee_id, amount, pay_date)
VALUES ('2',
        '2',
        '6000',
        '2017/03/31');


INSERT INTO salary (id, employee_id, amount, pay_date)
VALUES ('3',
        '3',
        '10000',
        '2017/03/31');


INSERT INTO salary (id, employee_id, amount, pay_date)
VALUES ('4',
        '1',
        '7000',
        '2017/02/28');


INSERT INTO salary (id, employee_id, amount, pay_date)
VALUES ('5',
        '2',
        '6000',
        '2017/02/28');


INSERT INTO salary (id, employee_id, amount, pay_date)
VALUES ('6',
        '3',
        '8000',
        '2017/02/28');

 TRUNCATE TABLE employee;


INSERT INTO employee (employee_id, department_id)
VALUES ('1',
        '1');


INSERT INTO employee (employee_id, department_id)
VALUES ('2',
        '2');


INSERT INTO employee (employee_id, department_id)
VALUES ('3',
        '2');

