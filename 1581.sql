SELECT V.customer_id,count(*) as count_no_trans
From Visits as V Left join Transactions as T
on V.visit_id=T.visit_id
WHERE transaction_id IS NULL
GROUP BY V.customer_id;