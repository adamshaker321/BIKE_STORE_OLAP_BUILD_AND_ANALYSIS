USE SalesDW;
GO

BULK INSERT Bronze.brands
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\brands.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);



/*==============================
Load categories
==============================*/
BULK INSERT Bronze.categories
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\categories.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS categories_rows FROM Bronze.categories;
GO

/*==============================
Load customers
==============================*/
BULK INSERT Bronze.customers
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\customers.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS customers_rows FROM Bronze.customers;
GO

/*==============================
Load stores
==============================*/
BULK INSERT Bronze.stores
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\stores.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS stores_rows FROM Bronze.stores;
GO

/*==============================
Load staffs
==============================*/
BULK INSERT Bronze.staffs
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\staffs.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS staffs_rows FROM Bronze.staffs;
GO

/*==============================
Load products
==============================*/
BULK INSERT Bronze.products
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\products.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS products_rows FROM Bronze.products;
GO

/*==============================
Load stocks
==============================*/
BULK INSERT Bronze.stocks
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\stocks.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS stocks_rows FROM Bronze.stocks;
GO

/*==============================
Load orders
==============================*/
BULK INSERT Bronze.orders
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\orders.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS orders_rows FROM Bronze.orders;
GO

/*==============================
Load order_items
==============================*/
BULK INSERT Bronze.order_items
FROM 'C:\Users\Me\Downloads\NTI_end_to_end_project\Dataset\order_items.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS order_items_rows FROM Bronze.order_items;
GO

