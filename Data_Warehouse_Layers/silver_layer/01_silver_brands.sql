USE SalesDW;
GO

IF OBJECT_ID('Silver.brands', 'U') IS NOT NULL 
    DROP TABLE Silver.brands;
GO

CREATE TABLE Silver.brands (
    brand_id INT ,
    brand_name VARCHAR(100) NOT NULL,
    dwh_created_at DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO Silver.brands (brand_id, brand_name)
SELECT 
    CAST(TRIM(brand_id) AS INT),
    TRIM(brand_name)
FROM Bronze.brands
WHERE brand_id IS NOT NULL AND ISNUMERIC(brand_id) = 1;
GO

SELECT COUNT(*) AS silver_brands_rows FROM Silver.brands;
GO


