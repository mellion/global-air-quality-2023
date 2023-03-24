# Global Air Quality Analysis: Insights for Environmental Protection

<br>

## Link to the Power BI file

[View the Power BI file on Google Drive](https://drive.google.com/file/d/1wgdVOP7bjoV3w0N-CgFjY1kbZNF9AJm5/view?usp=share_link
)

## Introduction

<br>

> Air pollution is a major concern worldwide, with potentially harmful effects on human health and the environment. To help address this issue, we conducted an analysis of air quality data from the OpenAQ dataset, which includes information on pollutants such as PM2.5, NO2, and SO2 from over 100 countries. By analyzing 48,922 rows of data and visualizing the results with Power BI, we aimed to gain insights into which countries have the highest and lowest air pollution levels and how pollution has changed over time.


## Data Collection and Preprocessing

<br>

> We started by creating a PostgreSQL database called globalaq2023 and importing the OpenAQ dataset in CSV format. After an initial error message due to a header row in the wrong place, we created a table called aq_data with 10 columns, including country code, city, pollutant, value, and last_updated. A "year" column was later added, by extracting the year from "last_updated" column, bring our total columns to 11. To prepare the data for analysis, we cleaned and transformed it by changing data types, handling missing values, and removing duplicates, negative values, and records with 0 values. We also created a new column called year by extracting the year from last_updated.

<br>

> Once the data was preprocessed, various SQL queries were used to analyze the data in the aq_data table. The following queries were used to gain insights into the data:

To determine the most polluted cities, the following query was used:

<br>

SELECT city, country_label, value
<br>
FROM aq_data
<br>
ORDER BY value DESC;

<br>

To determine the top 5 polluted countries, the following query was used:

<br>

SELECT country_label, AVG(value) AS avg_value
<br>
FROM aq_data
<br>
GROUP BY country_label
<br>
ORDER BY avg_value DESC
<br>
LIMIT 5;

<br>

To determine the least polluted countries, the following query was used:

<br>

SELECT country_label, AVG(value) AS avg_value
<br>
FROM aq_data
<br>
GROUP BY country_label
<br>
ORDER BY avg_value ASC
<br>
LIMIT 5;

<br>

To find the cities with the highest PM2.5 pollution, the following query was used:

<br>

SELECT city, country_label, value
<br>
FROM aq_data
<br>
WHERE pollutant = 'PM2.5'
<br>
ORDER BY value DESC
<br>
LIMIT 10;

<br>

To find the yearly average pollutant value, the following query was used:

<br>

SELECT EXTRACT(YEAR FROM last_updated) AS year, AVG(value) AS avg_pollutant_value
<br>
FROM aq_data
<br>
GROUP BY year
<br>
ORDER BY year;

<br>

## Data Analysis and Visualization
Using Power BI, we created several visuals to gain insights into global air quality trends. The visuals include:

A line chart showing the global yearly average pollutant values
<br>
A table displaying the top 5 most polluted and least polluted countries
<br>
A stacked bar chart illustrating the highest pollution countries and pollutant types
<br>
A table showing cities with the highest PM2.5 pollution
<br>
A map displaying each country in the dataset, color-coded to indicate air quality
<br>

<br>

![Global Air Quality Dashboard](https://raw.githubusercontent.com/mellion/global-air-quality-2023/main/gaq_dashboard_one.png?token=GHSAT0AAAAAACAH4ZQ4D2N7KSSGGSOSROTSZA5KMGA)

<br>

![Global Air Quality Dashboard](https://raw.githubusercontent.com/mellion/global-air-quality-2023/main/gaq_dashboard_two.png?token=GHSAT0AAAAAACAH4ZQ47O45YBUPSKFYIYBGZA5KMZA)

<br>

## Key Findings
Through our analysis, we were able to address the following questions:

Which countries have the highest and lowest air pollution? The top 5 polluted countries are Turkey, Chile, Peru, Italy, and Macedonia. The least 5 polluted countries are Bahrain, Costa Rica, Kyrgyzstan, Serbia, Philippines.
<br>
What are the most polluted cities? The most polluted cities are all in Turkey.
<br>
What are the highest PM2.5 pollution cities? The cities with the highest PM2.5 pollution are Torino, Italy, Udupi, India, Delhi, India, Bangkok, Thailand, and Sukothai Thailand.
<br>
How has air pollution changed over time? We found that pollution levels have increased in many countries since the OpenAQ dataset was created.




## Conclusion and Recommendations
Based on our findings, we recommend the following strategies to combat air pollution:
<br>

Governments and organizations should work together to reduce air pollution levels in highly polluted countries, such as Turkey, Chile, and Peru.
<br>
Citizens can help reduce air pollution by using public transportation or biking instead of driving cars.
<br>
Industries should reduce their carbon emissions and improve their production processes to minimize air pollution levels.
<br>
By implementing these strategies, we can work towards cleaner air for all and a healthier planet.
<br>

D. Mellion (2023)
