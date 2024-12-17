```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might seem correct, but it can be slow if the `employees` table is large and doesn't have an index on `department_id` and `salary`.  Without indexes, the database has to perform a full table scan to find matching rows, which is inefficient.

Another issue is that if `department_id` has null values and you wish to include them then this query will miss them. To resolve this, you could use `IS NOT NULL` along with the `AND` condition. But a better way to handle this would be to use `COALESCE` to specify a default value when the column is NULL.