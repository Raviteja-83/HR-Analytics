# HR-Analytics
The HR Analytics project focuses on analyzing employee data to understand workforce trends and employee behavior. Using tools like Excel, Power BI, or Tableau, I created dashboards to track metrics such as employee count, attrition rate, department performance, and job satisfaction. The analysis helps HR teams make data-driven decisions.
EXCEL
1. Employee Count

   The company has a total of 50,000 employees.

   Male employees: 25,509

   Female employees: 24,941

 This shows the gender distribution is almost equal.

2. Average Hourly Rate

   The average hourly rate of male research scientists is 114.45.

   This metric helps HR understand salary distribution across roles.

3. Attrition Rate vs Monthly Income

   Employees with income less than 15K show the highest attrition rate.

   Higher salary groups have comparatively lower attrition.

This suggests salary may influence employee retention.

4. Job Role vs Work-Life Balance

   Different job roles show slightly different work-life balance scores.

   Research Scientists and Developers show relatively better work-life balance compared to some other roles.

5. Attrition Rate vs Years Since Last Promotion

    Employees who have 30+ years since promotion show the highest attrition rate.

    This indicates lack of promotion opportunities may increase employee turnover.

6. Average Working Years by Department

    Software and Sales departments have the highest average working years.
  
    Research & Development has slightly lower average working years.

7. Attrition Rate by Department

   Research & Development department has the highest attrition rate.

   Other departments like Sales and Support show moderate attrition levels.

8. Education Field vs Attrition Rate

   Employees from Human Resources, Life Sciences, Marketing, Medical, and Technical fields are included.

   Attrition rates are fairly similar across education fields.

9. Performance Rating Distribution

   Performance ratings are evenly distributed among employees.

   Most employees fall between rating levels 1 to 4, indicating balanced performance levels.

10. Dashboard Filters

  The dashboard includes filters for Marital Status and Age.

  These filters allow HR to analyze attrition and employee trends for specific groups.

![image alt](https://github.com/Raviteja-83/HR-Analytics/blob/8a4e6d4f92106443b4a9908877cd3cab54953ccb/Screenshot%202026-03-13%20212823.png)

POWER BI

1. Total Employees

   The organization has 50K total employees.

   Male employees: 25K

   Female employees: 25K

 This shows the company has a balanced gender distribution.

2. Average Hourly Rate

  The average hourly rate of male Research Scientists is 114.45.

  This metric helps HR understand salary levels for specific job roles.

3. Attrition Rate by Department

  The Research & Development department has the highest attrition rate (around 51%).

  Other departments like Software, Support, Sales, Human Resources, and Hardware have similar attrition rates close to 49–50%.

This indicates employee turnover is slightly higher in R&D.

4. Attrition Rate vs Years Since Last Promotion

  Employees who haven’t been promoted for 21–30 years and 30+ years show higher attrition rates (around 50%).

  This suggests that lack of promotion opportunities may lead to employees leaving the company.

5. Attrition Rate by Monthly Income Group

  Employees in the “Others” income group have the highest attrition rate (about 51%).

  Income groups such as 1K–10K, 20K–30K, and 40K–50K also show attrition close to 50%.

This means salary level slightly impacts employee retention.

6. Average Working Hours by Department

  Software and Sales departments have the highest average working hours (around 20.6 hours).

  Research & Development has the lowest working hours (around 20.3 hours).

7. Job Role vs Work-Life Balance

  Research Scientists, Developers, and Healthcare Representatives show better work-life balance scores (around 2.51).

  Sales Executives have slightly lower work-life balance (around 2.47).

8. Dashboard Filters

  The dashboard includes filters for:

  Gender

  Department

  Performance Rating
 
  Job Role

These filters allow HR to analyze employee trends based on different categories.
![image alt](https://github.com/Raviteja-83/HR-Analytics/blob/25197d0436e071d6ca68752fc936b2412d6facaf/Screenshot%202026-03-13%20214152.png)

TABLEAU

1. Core Workforce Demographics
   Total Employees: 50,000 (50K).

   Gender Balance: The workforce is perfectly split with 25,000 males and 25,000 females.

   Hourly Rate Insight: A specific callout shows the hourly rate for a Male Research Scientist is 114.4.

2. Attrition Analysis (The Primary Focus)
   The dashboard highlights a very high Average Attrition Rate of 50.26%. This suggests that roughly half of the workforce is leaving, which is a critical area      for HR intervention.

  By Department: Attrition is remarkably consistent across all departments, ranging from 49.44% (Hardware) to 51.21% (Research).

  By Income: Surprisingly, attrition remains high (above 50%) even for those earning above 50k, suggesting that salary might not be the primary driver of turnover.

  By Promotion: There is little correlation between years since the last promotion and attrition; those who haven't been promoted in 30+ years have a 50.90%   attrition rate, nearly identical to those promoted within 0–10 years (50.24%).

3. Job Satisfaction & Work-Life Balance
    Work-Life Balance: This is measured on a scale (likely 1–4). Most roles, including Healthcare Representatives, Managers, and Research Scientists, hover around  a score of 2.50. This indicates a "mediocre" or average work-life balance across the board.

4. Education & Role Distribution
  Education Fields: The bubble chart shows the largest groups come from Medical (8,607), Other (8,359), and Marketing (8,197) backgrounds.

  Filtering Options: On the left, the dashboard allows users to slice this data by Marital Status, Gender, Department, and Job Role.
![image alt](https://github.com/Raviteja-83/HR-Analytics/blob/14afb5f63bab199b95b225a2bab07e91d80b6466/Screenshot%202026-03-13%20214940.png)

SQL

1: Department-wise Attrition Rate

  A view named Departmentwiseattritionrate is created.

  It calculates the percentage of employees who left the company in each department.

 The formula used is:
 (Employees with Attrition = Yes / Total Employees) × 100.

 The result is grouped by department and sorted by highest attrition rate.
 
 2: Average Hourly Rate of Male Research Scientists

   This query calculates the average hourly salary of male employees working as Research Scientists.

   The AVG() function is used to calculate the average.

The result is rounded to 2 decimal places.

3: Attrition Rate by Monthly Income Group

   A view named Attrition_Rate_Vs_MonthlyIncomeStats is created.

   Employees are divided into salary groups (Below 10K, 10K–20K, 20K–30K, etc.).

   Data from two tables (hr_dataset_01 and hr_dataset_02) is joined using Employee ID.
 
   It calculates attrition percentage for each income group.

   This helps analyze how salary impacts employee attrition.
   
 4: Average Working Years by Department

   This query calculates the average number of years employees worked in each department.

   It uses YearsAtCompany column from the second dataset.

   The result is grouped by department and sorted by highest average working years.

 5: Job Role vs Work-Life Balance

   This query calculates the average work-life balance score for each job role.

   Data from both tables is joined using EmployeeNumber and EmployeeID.

   It helps identify which job roles have better work-life balance.

6: Attrition Rate vs Years Since Last Promotion

   Employees are categorized based on years since their last promotion:

  Recent Promotion

   6–10 Years

  11–20 Years

  21–30 Years

  31–40 Years

  40 Years

For each category, the attrition percentage is calculated.

This helps HR understand how promotion delays affect employee turnover.
