-- get the specified data for men's, women's, and gender neutral products
SELECT 
items.gender, SUM(items.price) AS "sales total"
FROM items
JOIN sales_records
ON sales_records.item_id = items.id
GROUP BY items.gender;