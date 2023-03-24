-- search for records where value is less than zero
SELECT city, country_label, value
FROM aq_data
WHERE value < 0
ORDER BY value;


-- delete records where value is less than zero
DELETE
FROM aq_data
WHERE value < 0;