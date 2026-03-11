-- PURPOSE: Audit dataset for missing values across key performance dimensions.
-- BUSINESS LOGIC: Identifying null values in critical fields (Location, Spend, ID, Category) to ensure accurate reporting.
-- FINDING: Identified 604 missing Customer IDs requiring cleaning prior to final aggregation.

SELECT 
COUNTIF(Location IS NULL) AS null_locations,
COUNTIF(`Total Spent` IS NULL) AS null_spend,
COUNTIF(`Customer ID` IS NULL) AS null_customers,
COUNTIF(Category IS NULL) AS null_categories
FROM `bionic-path-489705-d6.retail_store_sales.retail_store_sales`
