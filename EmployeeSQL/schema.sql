-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/zMbhBX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.



CREATE TABLE Employees (
    emp_no INT  NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date DATE  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex CHAR(1)  NOT NULL ,
    hire_date DATE  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE Departments (
    dept_no VARCHAR  NOT NULL ,
    dept_name VARCHAR  NOT NULL ,
    PRIMARY KEY (
        dept_no
    )
);

CREATE TABLE Dept_emp (
    emp_no INT  NOT NULL ,
    dept_no VARCHAR  NOT NULL ,
    PRIMARY KEY (
        dept_no
    )
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR  NOT NULL ,
    emp_no INT  NOT NULL ,
    PRIMARY KEY (
        dept_no
    )
);

CREATE TABLE Salaries (
    emp_no INT  NOT NULL ,
    salary INT  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE Titles (
    title_id VARCHAR  NOT NULL ,
    title VARCHAR  NOT NULL ,
    PRIMARY KEY (
        title_id
    )
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Salaries (emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Departments ADD CONSTRAINT fk_Departments_dept_no FOREIGN KEY(dept_no)
REFERENCES Dept_emp (dept_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

