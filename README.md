# Introdution
# 📊 Data Analyst Job Market Insights

This project analyzes job postings to uncover key trends in the data analyst job market — including the most in-demand skills and the highest-paying technologies. It uses SQL queries on a job postings dataset to extract insights that can help aspiring analysts and career switchers focus on the tools and skills that matter most.
You can check SQL queries here: [Project_sql folder](/Project_sql/)

# Tool I Usef 
- **SQL**: Used to write queries for extracting and analyzing job market data.  
- **PostgreSQL**: The database system where the data is stored and queried.  
- **Visual Studio Code**: My code editor for writing SQL scripts and managing the project files.  
- **Git**: Version control system to track changes and manage code history locally.  
- **GitHub**: Remote repository hosting service for collaboration and sharing the project online.

# The Analysis 
## 📈 Analysis Overview

In this project, I analyzed job postings data specifically for Data Analyst roles to identify the most in-demand skills, the most paied salaries and the highest paying technologies. Using SQL queries on PostgreSQL, I extracted key insights on skill popularity, salary trends, and remote work opportunities. 

This analysis can help aspiring data analysts focus on the skills that are currently valued in the job market and make informed career decisions.
### Top_paying_jobs
``` SQL
SELECT
    job_id,
    job_title,
    job_location,
    salary_year_avg,
    name AS company_name
FROM
    job_postings_fact    
LEFT JOIN
    company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location ='Anywhere' AND
    salary_year_avg is not NULL
ORDER BY
     salary_year_avg DESC
LIMIT 10:
```
📊 Dataset Insight

This dataset lists the top 10 highest-paying data roles, including job ID, title, location, salary, and company.

💼 Roles range from Data Analyst to Director of Analytics.

🌍 All positions are remote-friendly (“Anywhere”).

💰 Salaries range from $200K to $650K, with Data Analyst at Mantys topping the list.

🏢 Companies include Meta, AT&T, Pinterest, UCLA Healthcare, and Mantys.

It provides a quick snapshot of how competitive and lucrative remote data roles can be.
![TOP PATING JOBS](assets\630d8306-4f28-473e-84fb-c295e6c1352d.png
)
# What I Learned 
## End-to-End Data Analysis Project

Through this project, I developed and strengthened several technical skills across multiple areas:

### SQL Proficiency
- Wrote complex queries with `JOIN` operations between multiple tables
- Implemented filtering using `WHERE` clauses with multiple conditions
- Used aggregate functions and `ORDER BY` for sorting results
- Practiced data extraction and transformation for analysis

### Data Analysis
- Conducted exploratory data analysis on job market trends
- Identified patterns and insights from large datasets
- Compared skill demand across different parameters
- Analyzed salary distributions for data roles

### Database Management
- Worked with PostgreSQL as the database management system
- Managed table relationships and schema understanding
- Handled data importing and query optimization

### Version Control
- Used Git for tracking changes and maintaining project history
- Learned GitHub for repository management and project sharing
- Practiced commit messaging and branch management

### Technical Documentation
- Created comprehensive README files with proper formatting
- Documented SQL queries with clear explanations
- Presented findings with visualizations and insights

### Tools Integration
- Gained experience with Visual Studio Code for SQL development
- Learned to integrate multiple tools in a data analysis workflow
- Developed problem-solving skills for technical challenges

---

This project provided practical experience with the complete data analysis process — from writing SQL queries to extracting meaningful insights and effectively communicating findings.


# Conclusion

This project offered valuable hands-on experience in the full data analysis lifecycle—from querying and managing data with SQL and PostgreSQL to uncovering actionable insights about the data analyst job market. It reinforced key technical skills, improved my ability to interpret complex datasets, and enhanced my proficiency with tools like Visual Studio Code and Git. The insights gained can guide aspiring data analysts in focusing on the most relevant skills and career opportunities in today’s market.


