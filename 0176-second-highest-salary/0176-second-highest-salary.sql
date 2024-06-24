Select coalesce(

(select distinct (salary) as SecondHighestSalary 
from employee order by salary desc

limit 1,1 ),Null)

as SecondHighestSalary
