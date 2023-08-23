-- get the number of purchases for each purchased_at group

SELECT Count(*), purchased_at
FROM purchases
GROUP BY purchased_at
;