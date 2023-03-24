--returns the least polluted countries
SELECT country_label, AVG(value) AS avg_value
FROM aq_data
GROUP BY country_label
ORDER BY avg_value ASC
LIMIT 5;