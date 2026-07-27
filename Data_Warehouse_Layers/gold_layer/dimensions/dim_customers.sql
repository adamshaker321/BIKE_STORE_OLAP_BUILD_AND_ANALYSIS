use SalesDW;
go

SELECT
    ROW_NUMBER() OVER (ORDER BY CUSTOMER_ID) AS CUSTOMER_KEY,
    CUSTOMER_ID,
    FULL_NAME,
    EMAIL,
    STREET,
    CITY,
    STATE,
    ZIP_CODE
INTO Gold.dim_customers
FROM Silver.customers;