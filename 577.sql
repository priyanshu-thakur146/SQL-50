SELECT e.name,b.bonus FROM
Employee as e left join Bonus as b
on e.empId=b.empId
WHERE b.bonus< 1000 OR b.bonus is null;