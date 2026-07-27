USE SalesDW;
GO

IF OBJECT_ID('Silver.stores', 'U') IS NOT NULL 
    DROP TABLE Silver.stores;
GO

CREATE TABLE Silver.stores (
    store_id INT ,
    store_name VARCHAR(100) NOT NULL,
    phone VARCHAR(50) NULL,
    email VARCHAR(255) NULL,
    street VARCHAR(255) NULL,
    city VARCHAR(100) NULL,
    state VARCHAR(50) NULL,
    zip_code VARCHAR(20) NULL,
    dwh_created_at DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO Silver.stores (
    store_id, store_name, phone, email, street, city, state, zip_code
)
SELECT 
    CAST(TRIM(store_id) AS INT),
    TRIM(store_name),
    NULLIF(TRIM(phone), ''),
    LOWER(TRIM(COALESCE(EMAIL, 'unknown@example.com'))),
    TRIM(street),
    TRIM(city),
    TRIM(state),
    TRIM(COALESCE(zip_code, 'unknown'))
FROM Bronze.stores
WHERE store_id IS NOT NULL AND ISNUMERIC(store_id) = 1;
GO

SELECT COUNT(*) AS silver_stores_rows FROM Silver.stores;
GO


