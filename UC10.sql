mysql> select * from employee_payroll
    -> ;
+----+----------+--------+-----------+------------+-------+-----------+------------+-----------+------------+-------------+------------+---------+
| id | name     | gender | salary    | start_date | phone | address   | department | basic_pay | deductions | taxable_pay | income_tax | net_pay |
+----+----------+--------+-----------+------------+-------+-----------+------------+-----------+------------+-------------+------------+---------+
|  1 | Ram      | M      |    100000 | 2019-05-25 | NULL  | Bangalore |            |      NULL |       NULL |        NULL |       NULL |    NULL |
|  2 | Priyanka | F      | 125000000 | 2020-10-05 | NULL  | Bangalore | R&D        |      NULL |       NULL |        NULL |       NULL |    NULL |
|  3 | Charlie  | M      |    400000 | 2022-01-10 | NULL  | Bangalore |            |      NULL |       NULL |        NULL |       NULL |    NULL |
+----+----------+--------+-----------+------------+-------+-----------+------------+-----------+------------+-------------+------------+---------+
3 rows in set (0.01 sec)

mysql> insert into employee_payroll
    -> (name,gender,salary,start_date,phone,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) values
    -> ('Terissa','F',5000000.00,'2022-02-12',789456123,'HR',3500000,1500000,1000000,20000,54200000);
Query OK, 1 row affected (0.26 sec)

mysql> select * from employee_payroll;
+----+----------+--------+-----------+------------+-----------+-----------+------------+-----------+------------+-------------+------------+----------+
| id | name     | gender | salary    | start_date | phone     | address   | department | basic_pay | deductions | taxable_pay | income_tax | net_pay  |
+----+----------+--------+-----------+------------+-----------+-----------+------------+-----------+------------+-------------+------------+----------+
|  1 | Ram      | M      |    100000 | 2019-05-25 | NULL      | Bangalore |            |      NULL |       NULL |        NULL |       NULL |     NULL |
|  2 | Priyanka | F      | 125000000 | 2020-10-05 | NULL      | Bangalore | R&D        |      NULL |       NULL |        NULL |       NULL |     NULL |
|  3 | Charlie  | M      |    400000 | 2022-01-10 | NULL      | Bangalore |            |      NULL |       NULL |        NULL |       NULL |     NULL |
|  4 | Terissa  | F      |   5000000 | 2022-02-12 | 789456123 | Bangalore | HR         |   3500000 |    1500000 |     1000000 |      20000 | 54200000 |
+----+----------+--------+-----------+------------+-----------+-----------+------------+-----------+------------+-------------+------------+----------+
4 rows in set (0.13 sec)

mysql> insert into employee_payroll
    -> (name,gender,salary,start_date,phone,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) values
    -> ('Terissa','F',45600000.00,'2020-12-06',963258741,'sales & marketing',3500000,0,10000,5000,852000);
Query OK, 1 row affected (0.24 sec)

mysql> select * from employee_payroll;
+----+----------+--------+-----------+------------+-----------+-----------+-------------------+-----------+------------+-------------+------------+----------+
| id | name     | gender | salary    | start_date | phone     | address   | department        | basic_pay | deductions | taxable_pay | income_tax | net_pay  |
+----+----------+--------+-----------+------------+-----------+-----------+-------------------+-----------+------------+-------------+------------+----------+
|  1 | Ram      | M      |    100000 | 2019-05-25 | NULL      | Bangalore |                   |      NULL |       NULL |        NULL |       NULL |     NULL |
|  2 | Priyanka | F      | 125000000 | 2020-10-05 | NULL      | Bangalore | R&D               |      NULL |       NULL |        NULL |       NULL |     NULL |
|  3 | Charlie  | M      |    400000 | 2022-01-10 | NULL      | Bangalore |                   |      NULL |       NULL |        NULL |       NULL |     NULL |
|  4 | Terissa  | F      |   5000000 | 2022-02-12 | 789456123 | Bangalore | HR                |   3500000 |    1500000 |     1000000 |      20000 | 54200000 |
|  5 | Terissa  | F      |  45600000 | 2020-12-06 | 963258741 | Bangalore | sales & marketing |   3500000 |          0 |       10000 |       5000 |   852000 |
+----+----------+--------+-----------+------------+-----------+-----------+-------------------+-----------+------------+-------------+------------+----------+
5 rows in set (0.00 sec)