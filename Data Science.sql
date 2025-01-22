SELECT employee_residence, avg(salary_in_usd) AS Average_Remote_Salary
FROM transactionbank.datascientist
where remote_ratio = 100
group by employee_residence
order by Average_Remote_Salary desc;

select company_size, avg(salary_in_usd) AS Average_Salary
From transactionbank.datascientist
group by company_size
order by Average_Salary desc;

select work_year, job_title, experience_level, salary_in_usd
From transactionbank.datascientist
where experience_level = 'SE';

select avg(salary_in_usd) AS Average_SE_Salary
From transactionbank.datascientist
where experience_level = 'SE';

select stddev_samp(salary_in_usd) AS Standard_Deviation
From transactionbank.datascientist
where experience_level = 'SE';

select avg(salary_in_usd) AS Average_EN_Salary
From transactionbank.datascientist
where experience_level = 'EN';

select stddev_samp(salary_in_usd) AS Standard_Deviation
From transactionbank.datascientist
where experience_level = 'EN';

select work_year, round((sum(case when remote_ratio = 100 then 1 else 0 end) / count(*)) * 100, 2 )as remote_work_percentage 
From transactionbank.datascientist
group by work_year
order by work_year asc;

select max(salary_in_usd)
From transactionbank.datascientist;

select min(salary_in_usd)
From transactionbank.datascientist;

select avg(salary_in_usd)
From transactionbank.datascientist;

select case when salary_in_usd < 20000 then 'a, less than $20000'
when salary_in_usd between 20000 and 50000 then 'b, $20000 - $50000'
when salary_in_usd between 50000 and 100000  then 'c, $50000 - $100000'
when salary_in_usd between 100000 and 200000  then 'd, $100000 - $200000'
when salary_in_usd between 200000 and 300000  then 'e, $200000 - $300000'
when salary_in_usd between 300000 and 400000  then 'f, $300000 - $400000'
when salary_in_usd between 400000 and 500000  then 'g, $400000 - $500000'
when salary_in_usd between 500000 and 600000  then 'h, $500000 - $600000'
when salary_in_usd between 600000 and 700000  then 'i, $600000 - $700000'
when salary_in_usd > 700000 then 'j over $700000'
else  'others'
end as salary_ranges,
count(distinct job_title) as Employees
from transactionbank.datascientist
group by salary_ranges;

select job_title, company_location, salary_in_usd,
case when salary_in_usd > 400000 and company_location = 'US' then 1 else 0 
end as salaries_over_400000_and_US
from transactionbank.datascientist;

select count(job_title) as Number_Of_Engineering_Jobs
from transactionbank.datascientist
where job_title like '%Engineer%';

select count(job_title) as Numbers_Of_Architect_Jobs
from transactionbank.datascientist
where job_title like '%Architect%';

select count(job_title) as Number_Of_Scientist_Jobs
from transactionbank.datascientist
where job_title like '%Scientist%';



