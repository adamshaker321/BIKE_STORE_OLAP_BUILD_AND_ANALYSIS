USE SalesDW;
GO

WITH date_range AS
(
    SELECT
        MIN(order_date) AS START_DATE,
        (
            SELECT MAX(d)
            FROM
            (
                SELECT MAX(order_date) AS d FROM Silver.orders
                UNION ALL
                SELECT MAX(required_date) FROM Silver.orders
                UNION ALL
                SELECT MAX(shipped_date) FROM Silver.orders
            ) AS x
        ) AS END_DATE
    FROM Silver.orders
),
dates AS
(
    SELECT
        START_DATE AS FULL_DATE,
        END_DATE
    FROM date_range

    UNION ALL

    SELECT
        DATEADD(DAY, 1, FULL_DATE),
        END_DATE
    FROM dates
    WHERE FULL_DATE < END_DATE
)

SELECT
    CAST(CONVERT(char(8), FULL_DATE, 112) AS INT) AS DATE_KEY,
    FULL_DATE,
    YEAR(FULL_DATE) AS [YEAR],
    DATEPART(QUARTER, FULL_DATE) AS QUARTER,
    MONTH(FULL_DATE) AS [MONTH],
    DATENAME(MONTH, FULL_DATE) AS MONTH_NAME,
    DAY(FULL_DATE) AS [DAY],
    DATENAME(WEEKDAY, FULL_DATE) AS DAY_NAME,
    DATEPART(WEEK, FULL_DATE) AS [WEEK]
INTO Gold.dim_date
FROM dates
OPTION (MAXRECURSION 0);



