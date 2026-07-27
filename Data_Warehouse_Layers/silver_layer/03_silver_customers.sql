USE SalesDW;
GO

IF OBJECT_ID('Silver.customers', 'U') IS NOT NULL 
    DROP TABLE Silver.customers;
GO

CREATE TABLE Silver.customers (
    customer_id INT ,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(50) NULL,
    email VARCHAR(255) NULL,
    street VARCHAR(255) NULL,
    city VARCHAR(100) NULL,
    state VARCHAR(50) NULL,
    zip_code VARCHAR(20) NULL,
    dwh_created_at DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO Silver.customers (
    customer_id, full_name, phone, email, street, city, state, zip_code
)
SELECT 
    CAST(TRIM(customer_id) AS INT),
    CONCAT(TRIM(first_name),' ',
            TRIM(COALESCE(last_name, ''))
           ) as full_name,
    NULLIF(TRIM(phone), ''),
    LOWER(TRIM(email)),
    TRIM(street),
    TRIM(city),
    TRIM(state),
    TRIM(zip_code)
FROM Bronze.customers
WHERE customer_id IS NOT NULL AND ISNUMERIC(customer_id) = 1;
GO

SELECT COUNT(*) AS silver_customers_rows FROM Silver.customers;
GO


