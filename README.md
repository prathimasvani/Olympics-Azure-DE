# Olympics Azure Data Engineering Project

## Introduction

This project demonstrates an end-to-end Azure data engineering pipeline using the Tokyo Olympics 2020 dataset. While it's possible to complete the entire workflow within Azure Synapse Analytics alone, the primary objective of this project is to gain hands-on experience with multiple Azure services and understand how they work together in a modular data pipeline.
We built a solution that ingests raw data from a public Kaggle dataset, stores it in Azure Data Lake Storage, performs data transformation using Azure Databricks, and makes the cleaned data available for analysis via Azure Synapse Analytics. Finally, we visualize the insights using Power BI.

## Architecture

![image](https://github.com/user-attachments/assets/0ce4964a-8e3e-4ac7-b43f-c5258f8d89ec)

**Data Source** -  DataSet sourced from Kaggle
Data is available in CSV format (athletes, medals, teams, etc.)

**Data Ingestion – Azure Data Factory**
You used Azure Data Factory (ADF) to build a pipeline. It copies data from Kaggle (via GitHub or HTTP) into Azure. This is the Extract step in ETL

Raw Data – **Azure Data Lake Storage Gen2**
The raw CSV files are stored in ADLS Gen2 in a folder like /raw-data

Transformation – **Azure Databricks**
Used Azure Databricks with PySpark to

Clean and process the data
Cast data types
Handle missing/duplicate values
Aggregate or reshape data

Transformed Data – Azure Data Lake Storage (Curated Layer)
After transformation, data is written back to ADLS Gen2, under /transformed-data. Now it's clean, structured, and ready for analytics

Analytics – **Azure Synapse Analytics**
You connected Azure Synapse Analytics to the transformed data. Wrote SQL queries to extract insights like Total medals by country, Athlete count per country

Dashboard – **Power BI**
Connected Power BI to Synapse SQL or directly to ADLS via connector

Built interactive dashboards:

Stacked bar charts
Pie/donut charts
Maps and slicers

## Overview



## Technologies Used
Azure Services: Data Factory, Data Lake Gen2, Azure Databricks, Synapse Analytics
Programming: Python, SQL, Pyspark
Analytics: Power BI

## References
Credits to **Darshil Parmar** for his amazing DE content on youtube.

https://www.youtube.com/watch?v=IaA9YNlg5hM
https://www.youtube.com/watch?v=nW0ffUW2vw4
