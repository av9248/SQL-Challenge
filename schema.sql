-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/zMbhBX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE Departments (
    dept_no VARCHAR (4) NOT NULL ,
    dept_name VARCHAR (100) NOT NULL ,
    PRIMARY KEY (
        dept_no
    )
);


CREATE TABLE Employees (
    emp_no INT  NOT NULL ,
    emp_title_id VARCHAR (10)  NOT NULL ,
    birth_date DATE  NOT NULL ,
    first_name VARCHAR (50) NOT NULL ,
    last_name VARCHAR (50)  NOT NULL ,
    sex CHAR(1)  NOT NULL ,
    hire_date DATE  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE Titles (
    title_id VARCHAR (10) NOT NULL ,
    title VARCHAR (100)  NOT NULL ,
    PRIMARY KEY (
        title_id
    )
);

CREATE TABLE Salaries (
    emp_no INT  NOT NULL ,
    salary INT  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR (4) NOT NULL ,
    emp_no INT  NOT NULL ,
    PRIMARY KEY (
        dept_no,emp_no
    )
);

CREATE TABLE Dept_emp (
    dept_no VARCHAR (4) NOT NULL ,
    emp_no INT  NOT NULL ,
    PRIMARY KEY (
        dept_no,emp_no
    )
);





ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

