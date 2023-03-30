mysql>  alter table employee_payroll
    -> add basic_pay int,
    -> add deductions int,
    -> add taxable_pay int,
    -> add income_tax int,
    -> add net_pay int;
Query OK, 0 rows affected (1.54 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_payroll;
+-------------+--------------+------+-----+-----------+----------------+
| Field       | Type         | Null | Key | Default   | Extra          |
+-------------+--------------+------+-----+-----------+----------------+
| id          | int unsigned | NO   | PRI | NULL      | auto_increment |
| name        | varchar(150) | NO   |     | NULL      |                |
| gender      | char(1)      | YES  |     | NULL      |                |
| salary      | double       | NO   |     | NULL      |                |
| start_date  | date         | NO   |     | NULL      |                |
| phone       | varchar(15)  | YES  |     | NULL      |                |
| address     | varchar(30)  | YES  |     | Bangalore |                |
| department  | varchar(20)  | NO   |     | NULL      |                |
| basic_pay   | int          | YES  |     | NULL      |                |
| deductions  | int          | YES  |     | NULL      |                |
| taxable_pay | int          | YES  |     | NULL      |                |
| income_tax  | int          | YES  |     | NULL      |                |
| net_pay     | int          | YES  |     | NULL      |                |
+-------------+--------------+------+-----+-----------+----------------+
13 rows in set (0.04 sec)

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