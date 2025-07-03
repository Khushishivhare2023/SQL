/*
Table: Employees
+-------------+----------+
| Column Name | Type     |
+-------------+----------+
| employee_id | int      |
| name        | varchar  |
| reports_to  | int      |
| age         | int      |
+-------------+----------+
employee_id is the column with unique values for this table.
This table contains information about the employees and the id of the manager they report to. Some employees do not report to anyone (reports_to is null). 
 
For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.
Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.
Return the result table ordered by employee_id.
*/

SELECT a.employee_id,
       a.name,
       Count(b.employee_id)as reports_count,
       Round(AVG(b.age)) as average_age
FROM Employees a
Join Employees b
On a.employee_id=b.reports_to
GROUP BY a.employee_id,a.name
ORDER BY a.employee_id;

