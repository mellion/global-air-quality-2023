--global yearly average pollutant
SELECT EXTRACT(YEAR FROM last_updated) AS year, AVG(value) AS avg_pollutant_value
FROM aq_data
GROUP BY year
ORDER BY year;