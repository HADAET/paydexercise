--1st Query

select TO_CHAR(C.created_at,'DD-MON-YY') Created,C.display_name  from companies c 



-- 2nd Query
 select c.display_name company_name, count(PSP.period_id) TOTAL_PERIOD from companies c ,pay_schedule_periods psp
where C.pay_schedule_id = psp.schedule_id 
group by C.display_name 
order b c.display_name asc


--3rd Query 
select distinct c.display_name company_name, age(PSP.accrual_stop_at ,PSP.accrual_start_at) pay_period
from pay_schedule_periods psp ,companies c 
where C.pay_schedule_id =PSP.schedule_id 
order by c.display_name asc

