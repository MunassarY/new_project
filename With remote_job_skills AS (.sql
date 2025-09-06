With Top_demanded_skills_data_analyst AS(
    SELECT
        skill_id,
        count(*) AS skill_count
    FROM 
        skills_job_dim
    INNER JOIN 
        job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
    WHERE
        job_postings_fact.job_title = 'Data Analyst'


    GROUP BY skill_id
)
SELECT 
    skills.skill_id,
    skills AS skill_name,
    skill_count
FROM
    Top_demanded_skills_data_analyst
INNER JOIN skills_dim As skills ON Top_demanded_skills_data_analyst.skill_id = skills.skill_id
ORDER BY skill_count DESC
LIMIT 10