-- Showing the Dataset: The full table
SELECT *
FROM [HR-Employee-Attrition]

-- 1 Attrition Analysis by Department:
SELECT 
    Department,
    COUNT(CASE WHEN Attrition = 1 THEN 1 END) AS Employees_Left,
    COUNT(CASE WHEN Attrition = 0 THEN 1 END) AS Employees_Remained,
    ROUND((COUNT(CASE WHEN Attrition = 1 THEN 1 END) * 100.0 / COUNT(*)), 3) AS Attrition_Rate
FROM [HR-Employee-Attrition]
GROUP BY Department;

-- 2 Determine the average monthly income for each job role
SELECT JobRole, AVG(MonthlyIncome) AS AvgMonthlyIncome
FROM [HR-Employee-Attrition]
GROUP BY JobRole

-- 3 Number of employees at each education level, broken down by education field,
-- to assist in workforce planning and hiring strategies.
SELECT EducationField, Education, COUNT(*) AS EmployeeCount
FROM [HR-Employee-Attrition]
GROUP BY EducationField, Education
ORDER BY EducationField

-- 4 Analyse whether distance from home is a contributing factor to employee attrition.
SELECT Attrition, AVG(DistanceFromHome) AS AvgDistFromHome
FROM [HR-Employee-Attrition]
GROUP BY Attrition

-- 5 Investigate whether employees with more total working years are more likely to stay with
-- the company, providing insights into retention of experienced staff.
SELECT Attrition,
	AVG(TotalWorkingYears) AS Avg_TotalWorkingYears,
	COUNT(EmployeeNumber) AS EmployeeNumberCount
FROM [HR-Employee-Attrition]
GROUP BY Attrition

--6 The average number of years employees have spent at the company for each department,
-- highlighting where employee retention is strongest.
SELECT Department, AVG(YearsAtCompany) AS AvgYearsAtCompany
FROM [HR-Employee-Attrition]
GROUP BY Department;

-- 7 Explore whether job satisfaction scores are correlated with attrition rates
-- to help improve employee engagement strategies.
SELECT JobSatisfaction,
	 COUNT(CASE WHEN Attrition = 1 THEN 1 END) AS Employees_Left,
    COUNT(CASE WHEN Attrition = 0 THEN 1 END) AS Employees_Remained,
    ROUND((COUNT(CASE WHEN Attrition = 1 THEN 1 END) * 100.0 / COUNT(*)), 3) AS Attrition_Rate
FROM [HR-Employee-Attrition]
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction

-- 8 Identify trends in employee performance ratings based on the number of years employees
-- have spent at the company, helping to understand performance progression.
SELECT PerformanceRating, YearsAtCompany,
	COUNT(EmployeeNumber) AS EmployeeCount
FROM [HR-Employee-Attrition]
GROUP BY PerformanceRating, YearsAtCompany
ORDER BY PerformanceRating, YearsAtCompany;

-- 9 Examine the relationship between monthly income and stock option levels to ensure
-- alignment between compensation and stock incentive programs.
SELECT StockOptionLevel, 
    AVG(MonthlyIncome) AS Average_Monthly_Income, 
    COUNT(EmployeeNumber) AS Number_of_Employees
FROM [HR-Employee-Attrition]
GROUP BY StockOptionLevel
ORDER BY StockOptionLevel;

-- 10 Provide a breakdown of gender distribution within each job role to
-- support diversity and inclusion efforts within the company.
SELECT Gender, JobRole,
	COUNT(*) AS EmployeeCount
FROM [HR-Employee-Attrition]
GROUP BY Gender, JobRole
ORDER BY Gender, JobRole