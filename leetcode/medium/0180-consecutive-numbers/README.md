# Consecutive Numbers

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Table: `Logs`

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column starting from 1.

```

 

Find all numbers that appear at least three times consecutively.

Return the result table in  **any order**.

The result format is in the following example.

 

 **Example 1:** 

```
Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.

```

## Solution

**Language:** SQL  
**Runtime:** 98 ms  
**Memory:** 0B  
**Submitted:** 2026-10-15T17:03:34.546Z  

```sql
# Write your MySQL query statement below
SELECT DISTINCT e1.num AS ConsecutiveNums FROM logs e1 JOIN logs e2 ON e1.id=e2.id-1 JOIN logs e3 ON e2.id=e3.id-1
WHERE e1.num=e2.num AND e2.num=e3.num;
```

---

[View on LeetCode](https://leetcode.com/problems/consecutive-numbers/)