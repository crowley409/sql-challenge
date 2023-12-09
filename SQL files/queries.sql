-- Task 1
SELECT emp_no, last_name, first_name, sex, salary
FROM Employees
JOIN Salaries USING (emp_no);

-- Task 2
SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- Task 3
SELECT
    d.dept_no,
    d.dept_name,
    dm.emp_no AS manager_emp_no,
    e.last_name AS manager_last_name,
    e.first_name AS manager_first_name
FROM
    Department d
JOIN
    Dept_Manager dm ON d.dept_no = dm.dept_no
JOIN
    Employees e ON dm.emp_no = e.emp_no;

-- Task 4
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    de.dept_no,
    d.dept_name
FROM
    Dept_Emp de
JOIN
    Employees e ON de.emp_no = e.emp_no
JOIN
    Department d ON de.dept_no = d.dept_no;

-- Task 5
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Task 6
SELECT
    e.emp_no,
    e.last_name,
    e.first_name
FROM
    Dept_Emp de
JOIN
    Employees e ON de.emp_no = e.emp_no
WHERE
    de.dept_no = 'Sales';

-- Task 7
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM
    Dept_Emp de
JOIN
    Employees e ON de.emp_no = e.emp_no
JOIN
    Department d ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN ('Sales', 'Development');

-- Task 8
SELECT last_name, COUNT(*) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;
