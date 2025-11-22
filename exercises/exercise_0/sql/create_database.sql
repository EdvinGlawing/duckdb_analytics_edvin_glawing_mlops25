-- 1. Create/connect database
-- In DuckDB CLI: 
.open sql_course_structure.duckdb

-- 2. Create the table
DROP TABLE IF EXISTS course_content;

CREATE TABLE course_content (
  content TEXT,
  week INTEGER,
  content_type TEXT
);

-- 3. Insert initial rows
INSERT INTO course_content VALUES
  ('00_intro',              46, 'lecture'),
  ('01_course_structure',   46, 'lecture'),
  ('02_setup_duckdb',       46, 'lecture'),
  ('exercise_0',            46, 'exercise'),
  ('tenta',                 51, 'exam');
