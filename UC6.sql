mysql> alter table employee_payroll add gender char(1) after name;
Query OK, 0 rows affected (2.95 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe employee_payroll;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int unsigned | NO   | PRI | NULL    | auto_increment |
| name       | varchar(150) | NO   |     | NULL    |                |
| gender     | char(1)      | YES  |     | NULL    |                |
| salary     | double       | NO   |     | NULL    |                |
| start_date | date         | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
5 rows in set (0.07 sec)

mysql> select * from employee_payroll;
+----+----------+--------+-----------+------------+
| id | name     | gender | salary    | start_date |
+----+----------+--------+-----------+------------+
|  1 | Ram      | NULL   |    100000 | 2019-05-25 |
|  2 | Priyanka | NULL   | 125000000 | 2020-10-05 |
|  3 | Charlie  | NULL   |    400000 | 2022-01-10 |
+----+----------+--------+-----------+------------+
3 rows in set (0.00 sec)

mysql> update employee_payroll set gender = 'F' where name = 'Priyanka';
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set gender = 'M' where name = 'Ram' or name = 'Charlie';
Query OK, 2 rows affected (0.25 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from employee_payroll;
+----+----------+--------+-----------+------------+
| id | name     | gender | salary    | start_date |
+----+----------+--------+-----------+------------+
|  1 | Ram      | M      |    100000 | 2019-05-25 |
|  2 | Priyanka | F      | 125000000 | 2020-10-05 |
|  3 | Charlie  | M      |    400000 | 2022-01-10 |
+----+----------+--------+-----------+------------+
3 rows in set (0.12 sec)