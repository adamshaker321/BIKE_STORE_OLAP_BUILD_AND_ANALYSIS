USE SalesDW;
GO

IF OBJECT_ID('Silver.stocks', 'U') IS NOT NULL 
    DROP TABLE Silver.stocks;
GO

CREATE TABLE Silver.stocks (
    store_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    dwh_created_at DATETIME DEFAULT GETDATE(),
);
GO

INSERT INTO Silver.stocks (store_id, product_id, quantity)
SELECT 
    CAST(TRIM(store_id) AS INT),
    CAST(TRIM(product_id) AS INT),
    ISNULL(TRY_CAST(TRIM(quantity) AS INT), 0)
FROM Bronze.stocks
WHERE store_id IS NOT NULL AND product_id IS NOT NULL;
GO

SELECT COUNT(*) AS silver_stocks_rows FROM Silver.stocks;
GO



