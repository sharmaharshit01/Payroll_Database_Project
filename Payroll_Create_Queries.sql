CREATE DATABASE Payroll;
CREATE SCHEMA dbo;
CREATE TABLE dbo.Employee(
Employee_Id int(6),
First_Name VARCHAR(30),
Last_Name VARCHAR(30),
Hire_Date Date,
City VARCHAR(25) NOT NULL,
State VARCHAR(25),
Constraint Emp_PK PRIMARY KEY (Employee_Id));

CREATE TABLE dbo.Department(
Department_Id Int(6),
Department_Name VARCHAR(25),
CONSTRAINT Dept_PK primary key(Department_Id));

select * from dbo.Employee;

ALTER TABLE dbo.Employee ADD COLUMN Department_Id Int(6);
ALTER TABLE dbo.Employee rename COLUMN Department_Id TO Dept_Id;

ALTER TABLE dbo.Employee ADD Constraint Emp_FK 
FOREIGN KEY(Dept_Id) REFERENCES dbo.Department(Department_Id);

CREATE TABLE dbo.Salary(
Salary_Id Int(10),
Gross_Salary DECIMAL(10,2),
Monthly_Pay DECIMAL(10),
Income_Tax DECIMAL(10),
Provident_Fund DECIMAL(10),
Account_Id INT(10),
Constraint Salary_PK PRIMARY KEY(Salary_Id),
Constraint Salary_FK FOREIGN KEY(Account_Id) REFERENCES Account_Details(Acct_Id));

CREATE TABLE dbo.Account_Details(
Acct_Id INT(10),
Bank_Name VARCHAR(25),
Account_Number INT(15),
Employee_Id INT(6),
Constraint Acct_PK PRIMARY KEY(Acct_Id),
Constraint Acct_FK FOREIGN KEY(Employee_Id) REFERENCES Employee(Employee_Id));

CREATE TABLE dbo.Project(
Project_Id Int(10),
Project_Name VARCHAR(25),
Project_Description VARCHAR(100),
Constraint Project_PK PRIMARY KEY(Project_Id));

CREATE TABLE dbo.Department_Project(
Department_Id INT(6),
Project_Id Int(10),
Constraint Dept_FK FOREIGN KEY(Department_Id) REFERENCES Department(Department_Id),
Constraint Project_FK FOREIGN KEY(Project_Id) REFERENCES Project(Project_Id));

CREATE TABLE dbo.Education(
Education_Id INT(10),
Employee_Id INT(06),
Degree VARCHAR(25),
Graduation_Year INT(4),
Constraint Education_PK PRIMARY KEY(Education_Id), 
Constraint Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id));

CREATE TABLE dbo.Leave(
Leave_Id Int(10),
Employee_Id Int(6),
Leave_Date Date,
Constraint Leave_PK PRIMARY KEY(Leave_Id),
Constraint Leave_FK FOREIGN KEY(Employee_Id) REFERENCES Employee(Employee_Id));

CREATE TABLE dbo.Attendance(
Attendance_Id INT(10),
Hours_Worked INT(2),
Constraint Attendence_PK PRIMARY KEY(Attendance_Id));

CREATE TABLE dbo.Employee_Attendance(
Employee_Id INT(10),
Attendance_Id INT(10),
Constraint Emp_att_FK FOREIGN KEY(Employee_Id) REFERENCES Employee(Employee_Id),
Constraint Attendance_FK FOREIGN KEY (Attendance_Id) REFERENCES Attendance(Attendance_Id));

CREATE TABLE dbo.Work_Location(
Location_Id INT(10),
Location VARCHAR(20),
No_of_Employees INT(10),
City VARCHAR (20),
State VARCHAR (20),
Constraint Location_Id_PK PRIMARY KEY (Location_Id));


SHOW TABLES in dbo;
