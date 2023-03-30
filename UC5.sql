+----+----------+-----------+------------+
| id | name     | salary    | start_date |
+----+----------+-----------+------------+
|  1 | Ram      |    100000 | 2019-05-25 |
|  2 | Priyanka | 125000000 | 2020-10-05 |
|  3 | Charlie  |    400000 | 2022-01-10 |
+----+----------+-----------+------------+
3 rows in set (0.00 sec)

mysql> select salary from employee_payroll where name = 'Priyanka';
+-----------+
| salary    |
+-----------+
| 125000000 |
+-----------+
1 row in set (0.00 sec)

mysql> select * from employee_payroll where start_date between cast('2020-10-01' as date) and date(now());
+----+----------+-----------+------------+
| id | name     | salary    | start_date |
+----+----------+-----------+------------+
|  2 | Priyanka | 125000000 | 2020-10-05 |
|  3 | Charlie  |    400000 | 2022-01-10 |
+----+----------+-----------+------------+
2 rows in set (0.00 sec)