--cities with highest PM2.5 particle values
SELECT city, country_label, value
FROM aq_data
WHERE pollutant = 'PM2.5'
ORDER BY value DESC
LIMIT 10;