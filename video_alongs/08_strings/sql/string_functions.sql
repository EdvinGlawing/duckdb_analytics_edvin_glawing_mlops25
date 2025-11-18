-- remove leading and trailing spaces
SELECT
    trim(sql_word, ' ') AS trimmed_word,
    trimmed_word[1] AS first_character,
    trimmed_word[-1] AS last_character,
FROM
    staging.sql_glossary;

-- transform character to uppercase
SELECT
    upper(trim(sql_word, ' ')) AS sql_term,
    sql_term[1] AS first_character,
    sql_term[-1] AS last_character,
FROM
    staging.sql_glossary;

-- replace 2 spaces with 1 space
SELECT
    description,
    replace(description, '  ', ' ') as cleaned_description
FROM staging.sql_glossary;

-- concatenate strings
SELECT
    concat(upper(trim(sql_word, ' ')), ' command') as sql_command,
    upper(trim(sql_word, ' ')), || ' command' as sql_command,
FROM
    staging.sql_glossary;