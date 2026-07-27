USE SalesDW;
GO

SELECT DISTINCT
    TRY_CAST(TRIM(order_id) AS INT) AS order_id,
    TRY_CAST(TRIM(customer_id) AS INT) AS customer_id,
    TRY_CAST(TRIM(order_status) AS INT) AS order_status,

    TRY_CONVERT(
        DATE,
        CASE
            WHEN SUBSTRING(TRIM(order_date), 1, 2) = '10'
                THEN CONCAT('20', SUBSTRING(TRIM(order_date), 3, LEN(TRIM(order_date))))
            ELSE TRIM(order_date)
        END
    ) AS order_date,

    TRY_CONVERT(
        DATE,
        CASE
            WHEN SUBSTRING(TRIM(required_date), 1, 2) = '10'
                THEN CONCAT('20', SUBSTRING(TRIM(required_date), 3, LEN(TRIM(required_date))))
            ELSE TRIM(required_date)
        END
    ) AS required_date,

    TRY_CONVERT(
        DATE,
        CASE
            WHEN SUBSTRING(TRIM(shipped_date), 1, 2) = '10'
                THEN CONCAT('20', SUBSTRING(TRIM(shipped_date), 3, LEN(TRIM(shipped_date))))
            ELSE TRIM(shipped_date)
        END
    ) AS shipped_date,

    TRY_CAST(TRIM(store_id) AS INT) AS store_id,
    TRY_CAST(TRIM(staff_id) AS INT) AS staff_id
    into Silver.orders
FROM Bronze.orders;

SELECT COUNT(*) AS silver_orders_rows FROM Silver.orders;
GO



