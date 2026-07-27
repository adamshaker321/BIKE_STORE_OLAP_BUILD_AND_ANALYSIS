USE SalesDW;
GO

IF OBJECT_ID('Silver.categories', 'U') IS NOT NULL 
    DROP TABLE Silver.categories;
GO

CREATE TABLE Silver.categories (
    category_id INT ,
    category_name VARCHAR(100) NOT NULL,
    dwh_created_at DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO Silver.categories (category_id, category_name)
SELECT 
    CAST(TRIM(category_id) AS INT),
    TRIM(category_name)
FROM Bronze.categories
WHERE category_id IS NOT NULL AND ISNUMERIC(category_id) = 1;
GO

SELECT COUNT(*) AS silver_categories_rows FROM Silver.categories;
GO


