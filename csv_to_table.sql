COPY openaq_data (country_code, city, location, coordinates, pollutant, source_name, unit, value, last_updated, country_label)
FROM '/Darrell/Desktop/openaq.csv'
DELIMITER ','
CSV HEADER;