-- Databricks notebook source
show catalogs

-- COMMAND ----------

show SCHEMAS IN brightlearn

-- COMMAND ----------

show tables IN brightlearn.data

-- COMMAND ----------



-- COMMAND ----------

USE brightlearn.data;

-- COMMAND ----------

--running entire table
SELECT *
FROM brightlearn.data.retail_sales_dataset;


-- COMMAND ----------

SELECT * FROM brightlearn.data.retail_sales_dataset;
