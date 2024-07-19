# Write your MySQL query statement below
select s.User_id , round(avg(if(c.action="confirmed",1,0)),2) as confirmation_rate
from Signups s 
left join confirmations c 
on s.user_id = c.user_id
group by user_id;