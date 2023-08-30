#Calculating Salary more than 9 lacs

select B.employee_id,C.First_Name,C.Last_Name,A.Gross_Salary
from dbo.salary A inner join dbo.account_details B on A.Account_Id=B.Acct_Id
inner join dbo.employee C on B.Employee_Id=C.Employee_Id
where A.gross_salary>=900000;

#calculating least experienced employee

select Employee_Id, First_Name, Last_Name, round((datediff(SYSDATE(),Hire_Date)/365),1) as exp_in_years
from dbo.employee Order by Hire_Date desc Limit 1;


#Calculate highest salaried employee

select B.Employee_Id,First_Name,Last_Name, gross_salary 
from dbo.salary A inner join dbo.account_details B on A.Account_Id=B.Acct_Id 
inner join employee C on B.Employee_Id=C.Employee_Id
order by gross_salary desc limit 1;

#calculating 2 leaves in same month

select month(A.leave_date) As Leave_Month 
from dbo.leave A inner join dbo.employee B
on A.employee_id=B.employee_id
group by A.leave_date having count(leave_date)>1;