SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_skill_salary
FROM 
    job_postings_fact
INNER JOIN 
    skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short= 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY 
    skills 
ORDER BY 
    avg_skill_salary DESC
LIMIT
    10


/* 
Skill	Avg Salary ($)	Comment
svn	400,000	⚠️ Likely outlier or legacy niche
solidity	179,000	Blockchain dev skill
couchbase	160,515	NoSQL DB
datarobot	155,486	AutoML tool
golang	155,000	Programming/backend
mxnet	149,000	Deep learning
dplyr	147,633	Traditional R analysis
vmware	147,500	Virtualization/infra
terraform	146,734	DevOps/IaC
twilio	138,500	Messaging/API platform
*/