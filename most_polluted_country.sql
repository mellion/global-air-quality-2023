--returns the cities with the highest pollutant values in highest to lowest order
SELECT city, country_label, value
FROM aq_data
ORDER BY value DESC;