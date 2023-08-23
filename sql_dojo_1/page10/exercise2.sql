-- get the specified data for the top 5 products with the highest sales
SELECT
items.id, items.name, COUNT(*) * items.price AS "sales total"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id
ORDER BY COUNT(*) * items.price DESC LIMIT 5;
