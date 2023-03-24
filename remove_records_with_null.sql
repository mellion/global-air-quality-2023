--find records that contain a NULL value
SELECT *
FROM aq_data
WHERE country_code IS NULL OR
      city IS NULL OR
      location IS NULL OR
      coordinates IS NULL OR
      pollutant IS NULL OR
      source_name IS NULL OR
      unit IS NULL OR
      value IS NULL OR
      last_updated IS NULL OR
      country_label IS NULL;


--delete records that contain a NULL value
DELETE
FROM aq_data
WHERE country_code IS NULL OR
      city IS NULL OR
      location IS NULL OR
      coordinates IS NULL OR
      pollutant IS NULL OR
      source_name IS NULL OR
      unit IS NULL OR
      value IS NULL OR
      last_updated IS NULL OR
      country_label IS NULL;
