-- concatenation
SELECT
    42,
    'Hej DBA26' AS greet,
    'SQL' || ' is the language of relational databases' || ' :)' AS concatenation,
    CONCAT('hello', ' oracle') AS conc_func;

SELECT 
    ' hello' || ' ' || 'oracle' AS concat_operator,
    CONCAT('hello', ' ', 'oracle') AS concat_func,
    'total: ' || 42 AS implicit_type_conversion,
    '' AS null_col;

-- strings functions and subquery

SELECT
    UPPER('oracle sql'),
    LOWER('oracle sql'),
    INITCAP('oracle sql'),
    LENGTH('oracle sql');

SELECT
    s AS original,
    UPPER(s),
    LOWER(s),
    INITCAP(s),
    LENGTH(s)
FROM (SELECT 'OraCle sQl' AS s);

-- extract substrings
SELECT 
    s,
    SUBSTR(s, 1,6) AS first_six,
    SUBSTR(s, 7) AS from_seven,
    SUBSTR(s, -4) AS last_four
FROM (SELECT 'Oracle SQL on Oracle26ai' AS s);

-- INSTR
SELECT
    INSTR('idempotemt operation', 'operation') AS first_occurence,
    INSTR('banana', 'an',1,2) AS second_occ,
    INSTR('coll@evilcorp.com', '@');

-- clean a string
SELECT
    s,
    TRIM(s),
    LTRIM(s),
    RTRIM(s),
    RTRIM(INITCAP(REPLACE(TRIM(s), '     ', ' ')), 'x') AS cleaned
FROM (SELECT '          HellU       ORaCleX          ' AS s);

-- concatenation 
SELECT 
    '   hello' || ' ' || 'oracle' AS concatenation_operator,
    CONCAT('hello', ' ','oracle') AS concat_function,
    'total: ' || 42 AS implicit_type_conversion,
    '' AS null_col
    ;


-- string functions
-- case functions and length
SELECT 
    UPPER('oracle sql'),
    LOWER('ORACLE sQl'),
    INITCAP('oracle sql'),
    LENGTH('oracle');

-- extracting substrings
SELECT
    SUBSTR('Oracle SQL', 1,6) AS first_six,
    SUBSTR('Oracle SQL', 3) AS from_three,
    SUBSTR('Oracle SQL', -3) AS last_three;

-- searching with INSTR (in string)
-- INSTR(str, substr_to_find, start_index, n_occurence)
SELECT 
    INSTR('idempotent operation', 'operation') AS first_occ,
    INSTR('banana', 'an', 1,2) AS second_occ,
    SUBSTR('cool@evilcorp.com', INSTR('cool@evilcorp.com', '@') + 1) AS domain;

-- some other functions
SELECT
    REPLACE('2026-07-08', '-','/') AS replaced,
    TRANSLATE('hello', 'el', 'ip') AS translated,
    LPAD('42', 4, '/') AS left_pad,
    RPAD('name: ', 9,'.') AS right_pad,
    REVERSE('abcd') AS rev;

-- trim and replace to clean a string
SELECT 
    s,
    TRIM(s),
    LTRIM(s),
    RTRIM(s),
    REPLACE(s,'l','x'),
    RTRIM(INITCAP(REPLACE(TRIM(s), '   ', ' ')),'h') AS cleaned
FROM (SELECT '    hEllO   Oracleh   ' AS s); -- subquery


EXIT

