<img width="952" height="562" alt="PROJECT ARCHITECTURE drawio" src="https://github.com/user-attachments/assets/06b398ff-771e-410c-87a7-85f2f7a7d716" />

🏗️ Project Architecture

This project follows the Medallion Architecture (Bronze, Silver, Gold) to build a scalable and maintainable data warehouse for business intelligence and reporting.

📥 Source Layer

The pipeline starts by ingesting raw data from multiple operational sources. Data is extracted and loaded into the warehouse without any modifications to preserve the original records.

🥉 Bronze Layer

The Bronze layer stores the raw data exactly as received from the source systems. This layer serves as the historical landing zone and provides a reliable backup of the original data.

🥈 Silver Layer

In the Silver layer, data is cleaned, validated, standardized, and transformed. This includes handling missing values, correcting data types, removing duplicates, and applying business rules to prepare high-quality datasets.

🥇 Gold Layer

The Gold layer contains the analytical data model. Here, a Galaxy Schema is implemented by creating Fact and Dimension tables optimized for reporting and business analytics.

📊 Analytics & Reporting

The final Gold layer is connected to Power BI, where interactive dashboards and business reports provide insights into sales performance, products, customers, employees, and other key business metrics.
