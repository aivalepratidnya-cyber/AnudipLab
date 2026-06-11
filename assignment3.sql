mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employyee_details    |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.00 sec)

mysql> select * from employyee_details;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | Ankit Kanu     |           50000 |
|           2 | Ishan Gupta    |           60000 |
|           3 | Shreya Chingam |          100000 |
|           4 | Ganesh Yadav   |           40000 |
|           5 | Shweta Pal     |           70000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> alter table employyee_details rename employee;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from employee;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | Ankit Kanu     |           50000 |
|           2 | Ishan Gupta    |           60000 |
|           3 | Shreya Chingam |          100000 |
|           4 | Ganesh Yadav   |           40000 |
|           5 | Shweta Pal     |           70000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee where employee_salary >50000;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | Ishan Gupta    |           60000 |
|           3 | Shreya Chingam |          100000 |
|           5 | Shweta Pal     |           70000 |
+-------------+----------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employee order by employee_salary desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           3 | Shreya Chingam |          100000 |
|           5 | Shweta Pal     |           70000 |
|           2 | Ishan Gupta    |           60000 |
|           1 | Ankit Kanu     |           50000 |
|           4 | Ganesh Yadav   |           40000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee order by employee_salary;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           4 | Ganesh Yadav   |           40000 |
|           1 | Ankit Kanu     |           50000 |
|           2 | Ishan Gupta    |           60000 |
|           5 | Shweta Pal     |           70000 |
|           3 | Shreya Chingam |          100000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> create table orders(order_id int primary key, department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into orders values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, avg(amount) as total_avg from orders group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      1250 |
| HR         |       800 |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department having sum(amount) > 1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> select * from employee;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | Ankit Kanu     |           50000 |
|           2 | Ishan Gupta    |           60000 |
|           3 | Shreya Chingam |          100000 |
|           4 | Ganesh Yadav   |           40000 |
|           5 | Shweta Pal     |           70000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> create table employee_details(employeeID int not null,name varchar(50) not null, department varchar(60) not null, salary double not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employee_details values(01,'shrawani palle','HR',50000),(02,'ela farnandis','IT',7000),(03,'Bharti sing','IT',6000),(04,'Neha Mehta','HR',5000),(05,'Bharni pal','Finance',4500);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee_details;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | shrawani palle | HR         |  50000 |
|          2 | ela farnandis  | IT         |   7000 |
|          3 | Bharti sing    | IT         |   6000 |
|          4 | Neha Mehta     | HR         |   5000 |
|          5 | Bharni pal     | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| Finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee_details group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        55000 |
| IT         |        13000 |
| Finance    |         4500 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_avg from employee_details group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |     27500 |
| IT         |      6500 |
| Finance    |      4500 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employee_details group by department, salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |  50000 |        1 |
| IT         |   7000 |        1 |
| IT         |   6000 |        1 |
| HR         |   5000 |        1 |
| Finance    |   4500 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select * from employee_details;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | shrawani palle | HR         |  50000 |
|          2 | ela farnandis  | IT         |   7000 |
|          3 | Bharti sing    | IT         |   6000 |
|          4 | Neha Mehta     | HR         |   5000 |
|          5 | Bharni pal     | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*) >1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*) <=1;
+------------+-------+
| department | total |
+------------+-------+
| Finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)

mysql> select department, count(*) from employee_details group by department having count(*) > 1;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)

mysql>