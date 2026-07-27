USE SalesDW;
GO

IF OBJECT_ID('Silver.staffs', 'U') IS NOT NULL 
    DROP TABLE Silver.staffs;
GO

CREATE TABLE Silver.staffs (
    staff_id INT ,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NULL,
    phone VARCHAR(50) NULL,
    active INT NOT NULL,
    store_id INT NOT NULL, -- إرجاع الشرط NOT NULL
    manager_id INT NULL,
    dwh_created_at DATETIME DEFAULT GETDATE(),
);
GO

INSERT INTO Silver.staffs (
    staff_id,
    full_name,
    email,
    phone,
    active,
    store_id,
    manager_id
)
SELECT
    CAST(TRIM(staff_id) AS INT),
    CONCAT(
        TRIM(first_name),
        ' ',
        TRIM(COALESCE(last_name, ''))
    ),
    LOWER(TRIM(COALESCE(email, 'unknown@example.com'))),
    NULLIF(TRIM(phone), ''),
    CAST(TRIM(active) AS INT),
    CAST(TRIM(store_id) AS INT),
    TRY_CAST(TRIM(manager_id) AS INT)
FROM Bronze.staffs
WHERE TRY_CAST(TRIM(staff_id) AS INT) IS NOT NULL
  AND TRY_CAST(TRIM(store_id) AS INT) IS NOT NULL;
GO

SELECT COUNT(*) AS silver_staffs_rows FROM Silver.staffs;
GO


