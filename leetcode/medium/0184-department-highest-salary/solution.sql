# Write your MySQL query statement below
SELECT e.name as Employee, e.salary AS Salary, d.name AS Department FROM Employee e
INNER JOIN Department d ON d.id=e.departmentID
WHERE e.salary=
(SELECT MAX(e2.Salary) FROM Employee e2 WHERE e2.departmentId=e.departmentID);