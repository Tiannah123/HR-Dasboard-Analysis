# HR-Dasboard-Analysis
Employee data including demographics, performance, and attrition information, suitable for employee performance analysis.

# Project Overview
This project focuses on analyzing employee data to provide actionable insights for the HR department. Using SQL queries, we explore key HR metrics such as attrition rates, compensation trends, job satisfaction, and more. These insights help improve decision-making regarding workforce management, retention, and diversity.

# Dataset
The dataset used in this project is an HR Employee Attrition dataset containing information about employee demographics, job roles, compensation, and attrition status.

# Key Columns:
- Attrition: Whether an employee has left the company (Yes/No)
- JobRole: The role of the employee within the company
- Gender: Gender of the employee (Male/Female)
- MonthlyIncome: The monthly salary of each employee
- Department: The department where the employee works (e.g., Sales, Research & Development, HR)
- YearsAtCompany: Number of years the employee has been with the company
And more...

# Business Questions Addressed
- Attrition Rate by Department: Analyze which departments experience the highest employee turnover.
- Average Monthly Income by Job Role: Provide insights on the average compensation for different job roles.
- Employee Count by Education Level and Field: Breakdown of the number of employees based on education level and field of study.
- Distance from Home vs Attrition: Investigate the relationship between distance from home and attrition.
- Experience and Attrition: Explore if employees with more working experience tend to stay longer at the company.
- Average Years at Company by Department: Understand employee tenure in each department.
- Job Satisfaction and Retention: Analyze if job satisfaction is linked to attrition.
- Performance Rating by Years at Company: Study the distribution of performance ratings based on tenure.
- Income vs. Stock Option Level: Explore the relationship between monthly income and stock option level.
- Gender Distribution Across Job Roles: Provide insights into gender diversity across different job roles.

# Project Workflow
- Data Import and Cleaning: Load the dataset and clean it for analysis.
-- SQL Query Development: Write and execute SQL queries to address each of the business questions.
- Insights Generation: Interpret the results from SQL queries to generate actionable insights.
- Documentation: Summarize the project findings and provide business recommendations based on the analysis.

# SQL Queries
- Example Query 1: Attrition Rate by Department
SELECT 
    Department,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    COUNT(*) AS TotalEmployees,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*) AS AttritionRate
FROM EmployeeTable
GROUP BY Department;

- Example Query 2: Gender Distribution Across Job Roles
SELECT 
    JobRole,
    Gender,
    COUNT(*) AS EmployeeCount
FROM EmployeeTable
GROUP BY JobRole, Gender
ORDER BY JobRole, Gender;

# Tools & Technologies
- SQL: For querying the database and performing data analysis.
- Python/Pandas: Used for data preprocessing before running SQL queries (optional).
- Power BI/Tableau (optional): For data visualization of the insights gathered.

# Conclusion
This project helps the HR department gain valuable insights into factors affecting employee retention, compensation, and workforce diversity. By analyzing these metrics, the organization can develop more effective HR strategies to improve employee satisfaction and reduce attrition.
