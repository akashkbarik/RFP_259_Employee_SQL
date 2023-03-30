mysql> insert into employee_payroll ( name,salary,start_date ) values
    -> ( 'Ram',100000.00,'2019-05-25');
Query OK, 1 row affected (0.28 sec)

mysql> insert into employee_payroll ( name,salary,start_date ) values
    -> ( 'Priyanka',125000000.00,'2020-10-05'),
    -> ( 'Charlie',400000.00,'2022-01-10');
Query OK, 2 rows affected (0.24 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+----+----------+-----------+------------+
| id | name     | salary    | start_date |
+----+----------+-----------+------------+
|  1 | Ram      |    100000 | 2019-05-25 |
|  2 | Priyanka | 125000000 | 2020-10-05 |
|  3 | Charlie  |    400000 | 2022-01-10 |
+----+----------+-----------+------------+
3 rows in set (0.00 sec)