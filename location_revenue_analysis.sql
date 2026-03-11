-- PURPOSE: Analyze total revenue contribution by sales location (Online vs. In-store).
-- BUSINESS LOGIC: Utilizing window functions to calculate each location's percentage of total revenue.
-- STRATEGY: Identifying channel dominance to inform operational and marketing focus.

SELECT 
Location,
SUM(`Total Spent`) AS location_total,
ROUND(SUM(`Total Spent`) / SUM(SUM(`Total Spent`)) OVER(), 4) AS percent_of_total
FROM `bionic-path-489705-d6.retail_store_sales.retail_store_sales`
WHERE `Total Spent` IS NOT NULL
GROUP BY Location
