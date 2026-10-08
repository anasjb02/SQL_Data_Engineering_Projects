SELECT *
FROM job_postings_fact;

SELECT
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
--    sd.skills
FROM job_postings_fact as jpf
left join skills_job_dim as sjd
    on jpf.job_id = sjd.job_id
limit 10;