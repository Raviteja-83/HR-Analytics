use excelrproject_2;

select * from hr_dataset_01;
select * from hr_dataset_02;


# KPI --> #1
Create View Departmentwiseattritionrate  as
SELECT 
    Department, Round(COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 
    / COUNT(*),2) AS attrition_rate 
FROM hr_dataset_01 group by department order by attrition_rate desc ;

select * from Departmentwiseattritionrate;

# KPI --> #2

select Round(avg(hourlyrate),2) AverageHourlylyrate from hr_dataset_01 where jobrole='Research Scientist' and Gender='Male'

# KPI --> #3

Create view Attrition_Rate_Vs_MonthlyIncomeStats as
SELECT 
        CASE 
        WHEN HR_02.Monthlyincome < 10000 THEN 'Below 10K'
        WHEN HR_02.Monthlyincome BETWEEN 10000 AND 19999 THEN '10K-20K'
        WHEN HR_02.Monthlyincome BETWEEN 20000 AND 29999 THEN '20K-30K'
        WHEN HR_02.Monthlyincome BETWEEN 30000 AND 39999 THEN '30K-40K'
        WHEN HR_02.Monthlyincome BETWEEN 40000 AND 49999 THEN '40K-50K'
        ELSE '>50K'
    END AS Incomeslab, ROUND(
        COUNT(CASE WHEN HR_01.attrition = 'Yes' THEN 1 END) * 100.0 
        / COUNT(*),
    2) AS attrition_rate
FROM hr_dataset_01 HR_01
INNER JOIN hr_dataset_02 HR_02
    ON HR_01.EmployeeNumber = HR_02.Employeeid
GROUP BY Incomeslab
order by attrition_rate desc;

Select * from Attrition_Rate_Vs_MonthlyIncomeStats;

# KPI --> #4

SELECT HR_01.Department,Round(avg(HR_02.Yearsatcompany),2) as Averageworkingyears FROM hr_dataset_01 HR_01
INNER JOIN hr_dataset_02 HR_02
    ON HR_01.EmployeeNumber = HR_02.Employeeid
GROUP BY HR_01.Department 
order by Averageworkingyears desc;

# KPI --> #5

SELECT HR_01.jobrole,Round(avg(HR_02.worklifebalance),2) as worklifebalance FROM hr_dataset_01 HR_01
INNER JOIN hr_dataset_02 HR_02
    ON HR_01.EmployeeNumber = HR_02.Employeeid
GROUP BY HR_01.jobrole
order by worklifebalance desc;

# KPI --> #6

select 
	case 
	when Hr_02.Yearssincelastpromotion <= 5 then 'Recent Promotion' 
	when Hr_02.Yearssincelastpromotion between 6 and 10 then '6-10 Years of Promotion' 
	when Hr_02.Yearssincelastpromotion between 11 and 20 then '11-20 Years of Promotion' 
	when Hr_02.Yearssincelastpromotion between 21 and 30 then '21-30 Years of Promotion' 
	when Hr_02.Yearssincelastpromotion between 31 and 40 then '31-40 Years of Promotion' Else
		'>40 Years'
				END AS Promotionslab, 
                Round(
		count(case when HR_01.attrition = 'Yes' then 1 end) * 100 /
			count(*),2) as Attritionrate               
from hr_dataset_01 HR_01
		INNER JOIN hr_dataset_02 HR_02
		ON HR_01.EmployeeNumber = HR_02.Employeeid
		GROUP BY Promotionslab
		order by Attritionrate desc;


