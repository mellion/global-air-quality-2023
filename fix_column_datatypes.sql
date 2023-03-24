--change last_updated column's data type from TEXT to timestamp with time zone
ALTER TABLE aq_data
ALTER COLUMN last_updated TYPE timestamp with time zone USING to_timestamp(last_updated, 'YYYY-MM-DD"T"HH24:MI:SS');

--change value column's data type from TEXT to numeric
ALTER TABLE aq_data
ALTER COLUMN value TYPE numeric USING value::numeric;