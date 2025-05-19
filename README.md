# Olympics Azure Data Engineering Project

## Introduction

This project demonstrates an end-to-end Azure data engineering pipeline using the Tokyo Olympics 2020 dataset. While it's possible to complete the entire workflow within Azure Synapse Analytics alone, the primary objective of this project is to gain hands-on experience with multiple Azure services and understand how they work together in a modular data pipeline.
We built a solution that ingests raw data from a public Kaggle dataset, stores it in Azure Data Lake Storage, performs data transformation using Azure Databricks, and makes the cleaned data available for analysis via Azure Synapse Analytics. Finally, we visualize the insights using Power BI.

## Architecture

![image](https://github.com/user-attachments/assets/0ce4964a-8e3e-4ac7-b43f-c5258f8d89ec)

**Data Source** -  DataSet sourced from Kaggle

**Data Ingestion – Azure Data Factory**

Used Azure Data Factory (ADF) to build a pipeline. It copies data from Kaggle (via GitHub or HTTP) into Azure. This is the Extract step in ETL

Raw Data – **Azure Data Lake Storage Gen2** - The raw CSV files are stored in ADLS Gen2 in a folder like /raw-data

Transformation – **Azure Databricks** 

Used Azure Databricks with PySpark to

1) Clean and process the data
2) Cast data types
3) Handle missing/duplicate values
4) Aggregate or reshape data

Transformed Data – **Azure Data Lake Storage** (Curated Layer) - After transformation, data is written back to ADLS Gen2, under /transformed-data. Now it's clean, structured, and ready for analytics

Analytics – **Azure Synapse Analytics**

Connected Azure Synapse Analytics to the transformed data. Wrote SQL queries to extract insights like Total medals by country, Athlete count per country

Dashboard – **Power BI**

Connected Power BI to Synapse SQL or directly to ADLS via connector

Built interactive dashboards:

1) Stacked bar charts
2) Pie/donut charts
3) Maps and slicers

## Overview

1. Data Source

      Source: Kaggle dataset containing CSV files related to Tokyo Olympics 2020
      Files included: athletes.csv, medals.csv, teams.csv, etc.

2. Data Ingestion using Azure Data Factory
   
      Create a storage Account and container with two folders for raw data and transformed data.
      
      ![image](https://github.com/user-attachments/assets/78fd3f82-ee26-4660-af92-69b3414ad23a)
      
      ![image](https://github.com/user-attachments/assets/4ffbbc12-50cb-4e0c-92fe-a77f5e7c5fb4)
      
      Created a pipeline in ADF. Used HTTP connector to fetch raw CSV files from GitHub
      Sink: Stored files in Azure Data Lake Storage Gen2 (inside a /raw-data folder)

4. Data Storage – Raw Layer

      Created a Storage Account with hierarchical namespace enabled (ADLS Gen2)

5. Data Transformation using Azure Databricks

      Mounted ADLS to Azure Databricks using OAuth credentials
      
      Read raw CSV files using PySpark
   
      Performed:
      Data cleaning (nulls, duplicates)
      Data type conversion
      Simple aggregation and formatting
      Wrote cleaned data back to ADLS under /transformed-data

6. Analytics using Azure Synapse Analytics
      Created a Synapse Workspace.Created external tables using "From Data Lake" wizard
      
      Wrote SQL queries to analyze:
      Athlete count by country, Medal distribution, Gender participation by sport

🔹 6. Data Visualization using Power BI
Connected Power BI to Synapse or ADLS

Built charts including:

Bar charts for athlete count

Donut charts for medal distribution

Maps for geographic visuals

Slicers for interactivity
   
   ## Technologies Used

Azure Services: Data Factory, Data Lake Gen2, Azure Databricks, Synapse Analytics
Programming: Python, SQL, Pyspark
Analytics: Power BI

## References

Credits to **Darshil Parmar** for his amazing DE content on youtube.

https://www.youtube.com/watch?v=IaA9YNlg5hM
https://www.youtube.com/watch?v=nW0ffUW2vw4
