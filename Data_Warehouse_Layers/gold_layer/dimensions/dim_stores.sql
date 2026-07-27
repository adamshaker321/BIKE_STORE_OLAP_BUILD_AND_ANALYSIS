USE SalesDW;
GO

SELECT
    ROW_NUMBER() OVER (ORDER BY STORE_ID) AS STORE_KEY,
    STORE_ID,
    STORE_NAME,
    EMAIL,
    STREET,
    CITY,
    STATE,
    ZIP_CODE,
    PHONE
INTO Gold.dim_stores
FROM Silver.stores;


