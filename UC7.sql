mysql> select sum(salary) from employee_payroll where gender = 'F' group by gender;
+-------------+
| sum(salary) |
+-------------+
|   125000000 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(salary) from employee_payroll where gender = 'M' group by gender;
+-------------+
| sum(salary) |
+-------------+
|      500000 |
+-------------+
1 row in set (0.00 sec)

mysql> select gender , sum(salary) from employee_payroll group by gender;
+--------+-------------+
| gender | sum(salary) |
+--------+-------------+
| M      |      500000 |
| F      |   125000000 |
+--------+-------------+
2 rows in set (0.00 sec)

mysql> select gender , avg(salary) from employee_payroll group by gender;
+--------+-------------+
| gender | avg(salary) |
+--------+-------------+
| M      |      250000 |
| F      |   125000000 |
+--------+-------------+
2 rows in set (0.00 sec)

mysql> select gender , min(salary) from employee_payroll group by gender;
+--------+-------------+
| gender | min(salary) |
+--------+-------------+
| M      |      100000 |
| F      |   125000000 |
+--------+-------------+
2 rows in set (0.00 sec)

mysql> select gender , max(salary) from employee_payroll group by gender;
+--------+-------------+
| gender | max(salary) |
+--------+-------------+
| M      |      400000 |
| F      |   125000000 |
+--------+-------------+
2 rows in set (0.00 sec)

mysql> select gender , count(salary) from employee_payroll group by gender;
+--------+---------------+
| gender | count(salary) |
+--------+---------------+
| M      |             2 |
| F      |             1 |
+--------+---------------+
2 rows in set (0.00 sec)