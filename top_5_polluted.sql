--returns the 5 countries with the most pollution (based on cities and values columns)
SELECT country_label, MAX(value) as max_value
FROM aq_data
GROUP BY country_label
ORDER BY max_value DESC
LIMIT 5;
