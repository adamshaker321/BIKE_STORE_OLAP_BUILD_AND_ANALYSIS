USE SalesDW;
GO

/* ==========================
   BRANDS
========================== */
CREATE TABLE Bronze.brands (
    brand_id NVARCHAR(50) ,
    brand_name NVARCHAR(255)
);
GO

/* ==========================
   CATEGORIES
========================== */
CREATE TABLE Bronze.categories (
    category_id NVARCHAR(50) ,
    category_name NVARCHAR(255)
);
GO

/* ==========================
   CUSTOMERS
========================== */
CREATE TABLE Bronze.customers (
    customer_id NVARCHAR(50) ,
    first_name NVARCHAR(100),
    last_name NVARCHAR(100),
    phone NVARCHAR(50),
    email NVARCHAR(255),
    street NVARCHAR(255),
    city NVARCHAR(100),
    state NVARCHAR(100),
    zip_code NVARCHAR(50)
);
GO

/* ==========================
   STORES
========================== */
CREATE TABLE Bronze.stores (
    store_id NVARCHAR(50) ,
    store_name NVARCHAR(255),
    phone NVARCHAR(50),
    email NVARCHAR(255),
    street NVARCHAR(255),
    city NVARCHAR(100),
    state NVARCHAR(100),
    zip_code NVARCHAR(50)
);
GO

/* ==========================
   STAFFS
========================== */
CREATE TABLE Bronze.staffs (
    staff_id NVARCHAR(50),
    first_name NVARCHAR(100),
    last_name NVARCHAR(100),
    email NVARCHAR(255),
    phone NVARCHAR(50),
    active NVARCHAR(20),
    store_id NVARCHAR(50),
    manager_id NVARCHAR(50)
);
GO

/* ==========================
   PRODUCTS
========================== */
CREATE TABLE Bronze.products (
    product_id NVARCHAR(50),
    product_name NVARCHAR(255),
    brand_id NVARCHAR(50),
    category_id NVARCHAR(50),
    model_year NVARCHAR(20),
    list_price NVARCHAR(50)
);
GO

/* ==========================
   STOCKS
========================== */
CREATE TABLE Bronze.stocks (
    store_id NVARCHAR(50),
    product_id NVARCHAR(50),
    quantity NVARCHAR(50),
    
);
GO

/* ==========================
   ORDERS
========================== */
CREATE TABLE Bronze.orders (
    order_id NVARCHAR(50) ,
    customer_id NVARCHAR(50),
    order_status NVARCHAR(20),
    order_date NVARCHAR(50),
    required_date NVARCHAR(50),
    shipped_date NVARCHAR(50),
    store_id NVARCHAR(50),
    staff_id NVARCHAR(50)
);
GO

/* ==========================
   ORDER_ITEMS
========================== */
CREATE TABLE Bronze.order_items (
    order_id NVARCHAR(50),
    item_id NVARCHAR(50),
    product_id NVARCHAR(50),
    quantity NVARCHAR(50),
    list_price NVARCHAR(50),
    discount NVARCHAR(50),
);
GO