-- UPPGIFT 2: Filtrera salaries-data (salaries_sf)

-- a) Antal personer med baslön över 100k
SELECT COUNT(*) AS antal_over_100k
FROM salaries_sf
WHERE basepay > 100000;

-- b) Antal personer med baslön över 100k, 150k, 200k
SELECT
    SUM(CASE WHEN basepay > 100000 THEN 1 ELSE 0 END) AS over_100k,
    SUM(CASE WHEN basepay > 150000 THEN 1 ELSE 0 END) AS over_150k,
    SUM(CASE WHEN basepay > 200000 THEN 1 ELSE 0 END) AS over_200k
FROM salaries_sf;

-- c) Andel personer med baslön över 100k
SELECT
    ROUND(SUM(CASE WHEN basepay > 100000 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS andel_over_100k_procent
FROM salaries_sf;

-- d) Antal personer som inte får övertidsersättning
SELECT COUNT(*) AS antal_utan_overtime
FROM salaries_sf
WHERE overtimepay = 0 OR overtimepay IS NULL;

-- e) Min, medel, median och max baslön
SELECT
    MIN(basepay) AS min_basepay,
    ROUND(AVG(basepay), 2) AS avg_basepay,
    MEDIAN(basepay) AS median_basepay,
    MAX(basepay) AS max_basepay
FROM salaries_sf;

-- f) Min, medel, median och max totallön (inklusive förmåner)
SELECT
    MIN(totalpay) AS min_totalpay,
    ROUND(AVG(totalpay), 2) AS avg_totalpay,
    MEDIAN(totalpay) AS median_totalpay,
    MAX(totalpay) AS max_totalpay
FROM salaries_sf;

-- g) Topp 1% baslön, sorterat på högsta lön
SELECT *
FROM salaries_sf
ORDER BY basepay DESC
FETCH FIRST 1 PERCENT ROWS ONLY;

EXIT;

