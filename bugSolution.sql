```sql
-- Create indexes if they don't exist
CREATE INDEX idx_department_id ON employees (department_id);
CREATE INDEX idx_salary ON employees (salary);

-- Optimized query with index usage and handling of NULL values
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;

--Alternative handling of NULL values in department_id 
SELECT * FROM employees WHERE COALESCE(department_id, 0) = 10 AND salary > 100000;
```