# Write your MySQL query statement below
SELECT DISTINCT e1.num AS ConsecutiveNums FROM logs e1 JOIN logs e2 ON e1.id=e2.id-1 JOIN logs e3 ON e2.id=e3.id-1
WHERE e1.num=e2.num AND e2.num=e3.num;