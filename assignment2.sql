mysql>  use e_commerce;
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

mysql> select * from employyee_details limit 3;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | Ankit Kanu     |           50000 |
|           2 | Ishan Gupta    |           60000 |
|           3 | Shreya Chingam |          100000 |
+-------------+----------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employyee_details limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | Ankit Kanu    |           50000 |
|           2 | Ishan Gupta   |           60000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from employyee_details order by employee_salary;
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

mysql> select * from employyee_details order by employee_name;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | Ankit Kanu     |           50000 |
|           4 | Ganesh Yadav   |           40000 |
|           2 | Ishan Gupta    |           60000 |
|           3 | Shreya Chingam |          100000 |
|           5 | Shweta Pal     |           70000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employyee_details order by employee_name desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           5 | Shweta Pal     |           70000 |
|           3 | Shreya Chingam |          100000 |
|           2 | Ishan Gupta    |           60000 |
|           4 | Ganesh Yadav   |           40000 |
|           1 | Ankit Kanu     |           50000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employyee_details order by employee_salary desc;
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

mysql> select * from employyee_details order by employee_salary desc limit 2;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           3 | Shreya Chingam |          100000 |
|           5 | Shweta Pal     |           70000 |
+-------------+----------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| customer_id | name      | city      | email                     | phone_no | address              | pin_code |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| c101        | pratidnya | kalyan    | aivalepratidnya@gmail.com | 9136     | yadav nagar mohone   |   421102 |
| c102        | khushi    | diva      | khushi123@gmail.com       | 4532     | shivnirmal heights   |   400611 |
| c103        | kalpana   | thane     | kalpana123@gmail.com      | 9823     | nirmala heights      |   484801 |
| c104        | pratiksha | dombivali | pratiksha523@gmail.com    | 5467     | mohone maharashtra   |   401602 |
| c105        | khushboo  | titwala   | khushnoo345@gmail.com     | 3456     | kalyan shivaji chowk |   401231 |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
5 rows in set (0.04 sec)

mysql> select distinct city from customer;
+-----------+
| city      |
+-----------+
| kalyan    |
| diva      |
| thane     |
| dombivali |
| titwala   |
+-----------+
5 rows in set (0.02 sec)

mysql> select city from customer;
+-----------+
| city      |
+-----------+
| kalyan    |
| diva      |
| thane     |
| dombivali |
| titwala   |
+-----------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| customer_id | name      | city      | email                     | phone_no | address              | pin_code |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| c101        | pratidnya | kalyan    | aivalepratidnya@gmail.com | 9136     | yadav nagar mohone   |   421102 |
| c102        | khushi    | diva      | khushi123@gmail.com       | 4532     | shivnirmal heights   |   400611 |
| c103        | kalpana   | thane     | kalpana123@gmail.com      | 9823     | nirmala heights      |   484801 |
| c104        | pratiksha | dombivali | pratiksha523@gmail.com    | 5467     | mohone maharashtra   |   401602 |
| c105        | khushboo  | titwala   | khushnoo345@gmail.com     | 3456     | kalyan shivaji chowk |   401231 |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+-----------+-----------+---------------------------+----------+--------------------+----------+
| customer_id | name      | city      | email                     | phone_no | address            | pin_code |
+-------------+-----------+-----------+---------------------------+----------+--------------------+----------+
| c101        | pratidnya | kalyan    | aivalepratidnya@gmail.com | 9136     | yadav nagar mohone |   421102 |
| c102        | khushi    | diva      | khushi123@gmail.com       | 4532     | shivnirmal heights |   400611 |
| c103        | kalpana   | thane     | kalpana123@gmail.com      | 9823     | nirmala heights    |   484801 |
| c104        | pratiksha | dombivali | pratiksha523@gmail.com    | 5467     | mohone maharashtra |   401602 |
+-------------+-----------+-----------+---------------------------+----------+--------------------+----------+
4 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.02 sec)

mysql> select * from order_details where order_date between '2026-01-01' and '2026-04-01';
Empty set (0.01 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select * from customer;
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| customer_id | name      | city      | email                     | phone_no | address              | pin_code |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| c101        | pratidnya | kalyan    | aivalepratidnya@gmail.com | 9136     | yadav nagar mohone   |   421102 |
| c102        | khushi    | diva      | khushi123@gmail.com       | 4532     | shivnirmal heights   |   400611 |
| c103        | kalpana   | thane     | kalpana123@gmail.com      | 9823     | nirmala heights      |   484801 |
| c104        | pratiksha | dombivali | pratiksha523@gmail.com    | 5467     | mohone maharashtra   |   401602 |
| c105        | khushboo  | titwala   | khushnoo345@gmail.com     | 3456     | kalyan shivaji chowk |   401231 |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c101','c103','c105');
+-------------+-----------+---------+---------------------------+----------+----------------------+----------+
| customer_id | name      | city    | email                     | phone_no | address              | pin_code |
+-------------+-----------+---------+---------------------------+----------+----------------------+----------+
| c101        | pratidnya | kalyan  | aivalepratidnya@gmail.com | 9136     | yadav nagar mohone   |   421102 |
| c103        | kalpana   | thane   | kalpana123@gmail.com      | 9823     | nirmala heights      |   484801 |
| c105        | khushboo  | titwala | khushnoo345@gmail.com     | 3456     | kalyan shivaji chowk |   401231 |
+-------------+-----------+---------+---------------------------+----------+----------------------+----------+
3 rows in set (0.01 sec)

mysql> select * from customer where customer_id not in('c101','c103','c105');
+-------------+-----------+-----------+------------------------+----------+--------------------+----------+
| customer_id | name      | city      | email                  | phone_no | address            | pin_code |
+-------------+-----------+-----------+------------------------+----------+--------------------+----------+
| c102        | khushi    | diva      | khushi123@gmail.com    | 4532     | shivnirmal heights |   400611 |
| c104        | pratiksha | dombivali | pratiksha523@gmail.com | 5467     | mohone maharashtra |   401602 |
+-------------+-----------+-----------+------------------------+----------+--------------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.01 sec)

mysql> select * from customer where city is not null;
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| customer_id | name      | city      | email                     | phone_no | address              | pin_code |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
| c101        | pratidnya | kalyan    | aivalepratidnya@gmail.com | 9136     | yadav nagar mohone   |   421102 |
| c102        | khushi    | diva      | khushi123@gmail.com       | 4532     | shivnirmal heights   |   400611 |
| c103        | kalpana   | thane     | kalpana123@gmail.com      | 9823     | nirmala heights      |   484801 |
| c104        | pratiksha | dombivali | pratiksha523@gmail.com    | 5467     | mohone maharashtra   |   401602 |
| c105        | khushboo  | titwala   | khushnoo345@gmail.com     | 3456     | kalyan shivaji chowk |   401231 |
+-------------+-----------+-----------+---------------------------+----------+----------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city="Thane" and address="kalyan shivaji chowk";
Empty set (0.01 sec)

mysql> select * from customer where city="Thane" or address="kalyan shivaji chowk";
+-------------+----------+---------+-----------------------+----------+----------------------+----------+
| customer_id | name     | city    | email                 | phone_no | address              | pin_code |
+-------------+----------+---------+-----------------------+----------+----------------------+----------+
| c103        | kalpana  | thane   | kalpana123@gmail.com  | 9823     | nirmala heights      |   484801 |
| c105        | khushboo | titwala | khushnoo345@gmail.com | 3456     | kalyan shivaji chowk |   401231 |
+-------------+----------+---------+-----------------------+----------+----------------------+----------+
2 rows in set (0.00 sec)