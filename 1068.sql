SELECT product_name,year,price
FROM Product inner join Sales
ON Product.product_id=Sales.product_id;