SELECT  unique_id,name FROM
Employees left join EmployeeUNI
on Employees.id=EmployeeUNI.id;