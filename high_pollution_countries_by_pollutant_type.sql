--countries by highest pollutant type
SELECT country_label, pollutant, AVG(value) AS avg_pollutant_value
FROM aq_data
GROUP BY country_label, pollutant
ORDER BY avg_pollutant_value DESC
LIMIT 10;