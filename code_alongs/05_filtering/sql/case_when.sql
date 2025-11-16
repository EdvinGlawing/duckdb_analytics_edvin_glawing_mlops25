-- do select first to see that we get what we want
-- change the experience_level labels
SELECT
    CASE
        WHEN experience_level = 'SE' THEN 'Senior level'
        WHEN experience_level = 'MI' THEN 'Mid level'
        WHEN experience_level = 'EN' THEN 'Entry level'
        WHEN experience_level = 'EX' THEN 'Expert level'
    END AS experience_level,
    * EXCLUDE (experience_level)
FROM
    data_jobs;

-- to persist changes - TEACHER EXAMPLE GAVE ME HUGE HEADACHE, ACCIDENTLY RUN THIS TWICE = ALL IS NULL
--UPDATE data_jobs
--SET
--    experience_level = CASE
--        WHEN experience_level = 'SE' THEN 'Senior level'
--        WHEN experience_level = 'MI' THEN 'Mid level'
--        WHEN experience_level = 'EN' THEN 'Entry level'
--        WHEN experience_level = 'EX' THEN 'Expert level'
--    END;

-- SAFE VERSION
UPDATE data_jobs
SET experience_level = CASE
    WHEN experience_level = 'SE' THEN 'Senior level'
    WHEN experience_level = 'MI' THEN 'Mid level'
    WHEN experience_level = 'EN' THEN 'Entry level'
    WHEN experience_level = 'EX' THEN 'Expert level'
    ELSE experience_level   -- prevents overwriting with NULL
END;


SELECT DISTINCT
    experience_level
FROM
    data_jobs;