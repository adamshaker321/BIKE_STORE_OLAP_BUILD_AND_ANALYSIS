USE SalesDW;
GO

SELECT DISTINCT
    TRY_CAST(TRIM(product_id) AS INT) AS product_id,
    TRIM(COALESCE(product_name, 'UNKNOWN')) AS product_name,
    TRY_CAST(TRIM(brand_id) AS INT) AS brand_id,
    TRY_CAST(TRIM(category_id) AS INT) AS category_id,
    TRY_CAST(TRIM(model_year) AS INT) AS model_year,
    TRY_CAST(TRIM(list_price) AS DECIMAL(10,2)) AS list_price
    into Silver.products
FROM Bronze.products;

SELECT COUNT(*) AS silver_products_rows FROM Silver.products;
GO

