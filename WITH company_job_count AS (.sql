WITH company_job_count AS (
SELECT 
    company_id,
   count(*) AS total_jobs
    
From job_postings_fact
GROUP BY company_id)

SELECT company_dim.name as company_names,
    company_job_count.total_jobs
FROM company_dim
LEFT JOIN company_job_count ON company_job_count.company_id =company_dim.company_id
order by total_jobs DESC;
