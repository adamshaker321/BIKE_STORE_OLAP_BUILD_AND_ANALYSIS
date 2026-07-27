USE SalesDW;
GO

SELECT DISTINCT
    TRY_CAST(TRIM(order_id) AS INT) AS order_id,
    TRY_CAST(TRIM(item_id) AS INT) AS item_id,
    TRY_CAST(TRIM(product_id) AS INT) AS product_id,
    TRY_CAST(TRIM(quantity) AS INT) AS quantity,
    TRY_CAST(TRIM(list_price) AS DECIMAL(10,2)) AS list_price,
    TRY_CAST(TRIM(discount) AS DECIMAL(10,2)) AS discount
    into Silver.order_items
FROM Bronze.order_items;
SELECT COUNT(*) AS silver_order_items_rows FROM Silver.order_items;
GO 

