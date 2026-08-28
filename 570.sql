select e1.name from
Employee as e1  join Employee as e2
on e1.id=e2.managerId
group by e1.id,e1.name
having count(e2.id)>=5;

-- The HAVING clause is used in SQL to filter the results of a GROUP BY query based on aggregate functions. 