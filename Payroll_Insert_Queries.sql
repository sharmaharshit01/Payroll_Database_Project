SHOW TABLES in dbo;
describe dbo.employee;
describe dbo.department;
describe dbo.project;
describe dbo.account_details;
describe dbo.education;
describe dbo.leave;
describe dbo.attendance;
describe dbo.work_location;
SELECT *FROM dbo.department;
SELECT *FROM dbo.Employee;
select * from dbo.Project;
SELECT * FROM dbo.Project;
SELECT * FROM dbo.account_details;
SELECT * FROM dbo.education;
SELECT * FROM dbo.leave;
SELECT * FROM dbo.attendance;
SELECT * FROM dbo.Work_Location;
select * from dbo.employee_attendance;
Select * from dbo.Department_Project;
SELECT * FROM dbo.Salary;

ALTER TABLE dbo.Work_Location ADD COLUMN Employee_Id Int(6);
ALTER TABLE dbo.Work_Location ADD CONSTRAINT Location_FK FOREIGN KEY(Employee_Id) REFERENCES dbo.Employee(Employee_Id);

INSERT INTO dbo.Department VALUES (1, 'Human Resources');
INSERT INTO dbo.Department VALUES (2, 'Software Development');
INSERT INTO dbo.Department VALUES (3, 'Data Analysis');
INSERT INTO dbo.Department VALUES (4, 'Data Science');
INSERT INTO Department VALUES (5,'Business Intelligence');
INSERT INTO Department VALUES (6,'Data Engineering');
INSERT INTO Department VALUES (7,'Manufacturing');
INSERT INTO Department VALUES (8,'Quality Control');


INSERT INTO  dbo.Employee VALUES (101,'Ojas','Phansekar',STR_to_Date('14-04-16', '%d-%m-%Y'),'New York City','New York',1);
INSERT INTO  dbo.Employee VALUES (102,'Vrushali','Patil',STR_to_Date('21-06-18', '%d-%m-%Y'),'Boston','Massachusetts',2);
INSERT INTO  dbo.Employee VALUES (103,'Pratik','Parija',STR_to_Date('13-09-19', '%d-%m-%Y'),'Chicago','Illinois',3);
INSERT INTO  dbo.Employee VALUES (104,'Chetan','Mistry',STR_to_Date('12-08-11', '%d-%m-%Y'),'Miami','Florida',4);
INSERT INTO  dbo.Employee VALUES (105,'Anugraha','Varkey',STR_to_Date('16-08-17', '%d-%m-%Y'),'Atlanta','Georgia',5);
INSERT INTO  dbo.Employee VALUES (106,'Rasagnya','Reddy',STR_to_Date('25-07-18', '%d-%m-%Y'),'San Mateo','California',6);
INSERT INTO  dbo.Employee VALUES (107,'Aishwarya','Boralkar',STR_to_Date('18-12-10', '%d-%m-%Y'),'San Francisco','California',7);
INSERT INTO  dbo.Employee VALUES (108,'Shantanu','Savant',STR_to_Date('27-11-15', '%d-%m-%Y'),'Seattle','Washington',8);
INSERT INTO  dbo.Employee VALUES (109,'Kalpita','Malvankar',STR_to_Date('24-04-16', '%d-%m-%Y'),'Boston','Massachusetts',8);
INSERT INTO  dbo.Employee VALUES (110,'Saylee','Bhagat',STR_to_Date('21-05-14', '%d-%m-%Y'),'San Francisco','California',7);

INSERT INTO dbo.Project(Project_ID,Project_Name) VALUES(27,'Analysis');
INSERT INTO dbo.Project VALUES (28,'Learning & Research',NULL);
INSERT INTO dbo.Project VALUES (21, 'Dev', 'Whatever');
INSERT INTO dbo.Project VALUES (22, 'Prod', 'Do Something');
INSERT INTO dbo.Project VALUES (23, 'Test', 'Focus');
INSERT INTO dbo.Project VALUES (24, 'Research', 'Focus on everything');
INSERT INTO dbo.Project VALUES (25, 'Arts & Crafts', 'Mandola Art');
INSERT INTO dbo.Project VALUES (26, 'Next Steps', 'Find some way out');

INSERT INTO dbo.Account_Details VALUES (40, 'ICICI', 201234, 101);
INSERT INTO dbo.Account_Details VALUES (41, 'HDFC', 201235, 102);
INSERT INTO dbo.Account_Details VALUES (42, 'IDFC', 201236, 103);
INSERT INTO dbo.Account_Details VALUES (43, 'PNB', 201237, 104);
INSERT INTO dbo.Account_Details VALUES (44, 'HDFC', 201238, 105);
INSERT INTO dbo.Account_Details VALUES (45,'SBI',201239, 106);
INSERT INTO dbo.Account_Details VALUES (46,'KOTAK', 201240, 107);
INSERT INTO dbo.Account_Details VALUES (47,'PNB', 201241, 108);
INSERT INTO dbo.Account_Details VALUES (48,'ICICI', 201242, 109);
INSERT INTO dbo.Account_Details VALUES (49,'AXIS', 201243, 110);

INSERT INTO dbo.Education VALUES (10, 101, 'M.Tech', 2017);
INSERT INTO dbo.Education VALUES (11, 102, 'B.Tech', 2019);
INSERT INTO dbo.Education VALUES (12, 103, 'BCA', 2020);
INSERT INTO dbo.Education VALUES (13, 104, 'MCA', 2021);
INSERT INTO dbo.Education VALUES (14, 105, 'MBA', 2018);
INSERT INTO dbo.Education VALUES (15, 106, 'BCA', 2017);
INSERT INTO dbo.Education VALUES (16, 107, 'MCA', 2020);
INSERT INTO dbo.Education VALUES (17, 108, 'B.Tech', 2021);

INSERT INTO dbo.Leave VALUES (51, 104, str_to_date('20-06-23','%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (52, 105, str_to_date('13-07-22','%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (53, 105, str_to_date('29-07-22', '%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (54, 106, str_to_date('29-07-22', '%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (55, 107, str_to_date('18-09-23', '%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (56, 108, str_to_date('16-02-23', '%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (57, 109, str_to_date('18-09-23', '%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (58, 110, str_to_date('11-01-23', '%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (59, 101, str_to_date('11-05-23', '%d-%m-%y'));
INSERT INTO dbo.Leave VALUES (60, 101, str_to_date('26-04-23', '%d-%m-%y'));

INSERT INTO dbo.Attendance VALUES (90,10);
INSERT INTO dbo.Attendance VALUES (91,20);
INSERT INTO dbo.Attendance VALUES (92,30);
INSERT INTO dbo.Attendance VALUES (93,40);
INSERT INTO dbo.Attendance VALUES (94,45);
INSERT INTO dbo.Attendance VALUES (95,56);
INSERT INTO dbo.Attendance VALUES (96,58);

INSERT INTO dbo.Work_Location VALUES (71, 'North', 4, 'Lucknow', 'Uttar Pradesh',101);
INSERT INTO dbo.Work_Location VALUES (72, 'North', 100, 'Gurgaon', 'Haryana',102);
INSERT INTO dbo.Work_Location VALUES (73, 'South', 56, 'Banglore', 'Karnataka',103);
INSERT INTO dbo.Work_Location VALUES (74, 'South', 62, 'Chennai', 'Tamil Nadu',104);
INSERT INTO dbo.Work_Location VALUES (75, 'West', 36, 'Ahmedabad', 'Gujarat',105);
INSERT INTO dbo.Work_Location VALUES (76, 'West', 93, 'Mumbai', 'Maharashtra',106);

INSERT INTO dbo.Work_Location VALUES (77,'South',4,'San Francisco','California',107);
INSERT INTO dbo.Work_Location VALUES (78,'South',2,'Seattle','Washington',108);
INSERT INTO dbo.Work_Location VALUES (79,'South',25,'Alpharetta','Georgia',109);
INSERT INTO dbo.Work_Location VALUES (80,'South',20,'Keene','New Hampshire',110);
INSERT INTO dbo.Work_Location VALUES (81,'South',22,'Hampton','New Hampshire',109);

DELETE FROM dbo.Work_Location WHERE Location_Id IN (71,72,73,74,75,76);

INSERT INTO dbo.employee_attendance VALUES (101, 90);
INSERT INTO dbo.employee_attendance VALUES (102,91);
INSERT INTO dbo.employee_attendance VALUES (103,92);
INSERT INTO dbo.employee_attendance VALUES (104,93);
INSERT INTO dbo.employee_attendance VALUES (105,94);
INSERT INTO dbo.employee_attendance VALUES (106,95);
INSERT INTO dbo.employee_attendance VALUES (107,96);
INSERT INTO dbo.employee_attendance VALUES (108,91);
INSERT INTO dbo.employee_attendance VALUES (109,92);
INSERT INTO dbo.employee_attendance VALUES (110,93);

INSERT INTO dbo.Department_Project VALUES (1, 21);
INSERT INTO dbo.Department_Project VALUES (2,22);
INSERT INTO dbo.Department_Project VALUES (3,23);
INSERT INTO dbo.Department_Project VALUES (4,24);
INSERT INTO dbo.Department_Project VALUES (5,25);
INSERT INTO dbo.Department_Project VALUES (6,26);
INSERT INTO dbo.Department_Project VALUES (7,21);
INSERT INTO dbo.Department_Project VALUES (8,24);

INSERT INTO dbo.Salary VALUES (1, 1000000, 75000,5000,3333.33, 40);
INSERT INTO dbo.Salary VALUES (2, 850000, 63000, 4000, 3833.33, 41);
INSERT INTO dbo.Salary VALUES (3, 1200000, 90000, 6000, 4000, 42);
INSERT INTO dbo.Salary VALUES (4, 140000, 105000, 6000, 5666, 43);
INSERT INTO dbo.Salary VALUES (5, 850000, 63000, 4000, 3833.33, 44);
INSERT INTO dbo.Salary VALUES (6, 1600000, 120000, 7000, 6315, 45);
INSERT INTO dbo.Salary VALUES (7, 360000, 25000,2600 , 2400, 46);
INSERT INTO dbo.Salary VALUES (8, 600000, 40000, 5500, 4500, 47);
INSERT INTO dbo.Salary VALUES (9, 800000, 58000, 5000, 3666, 48);
INSERT INTO dbo.Salary VALUES (10, 2000000, 150000, 9000, 7666, 41);

