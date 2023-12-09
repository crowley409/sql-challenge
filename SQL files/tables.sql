# Table 1
CREATE TABLE Department (
    dept_no VARCHAR(255) PRIMARY KEY,
    dept_name VARCHAR(255)
	);

# Table 2
CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no VARCHAR(255),
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no)
);

# Table 3
CREATE TABLE Dept_Manager (
    dept_no VARCHAR(255),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no)
);

# Table 4
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(255),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex CHAR(1),
    hire_date DATE
);

# Table 5
CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

# Table 6
CREATE TABLE Titles (
    title_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
