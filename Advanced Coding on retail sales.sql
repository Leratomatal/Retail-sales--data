-- Databricks notebook source

SELECT *
FROM brightlearn.data.retail_sales_dataset;

-- 2. Which product categories generated more than 150,000 in total sales? 
SELECT `Product Category`,
       SUM (`Total Amount`) As sum_total_Sales
        FROM brightlearn.data.retail_sales_dataset
        GROUP BY `Product Category` 
        HAVING SUM_total_sales >150000;


-- 3. Which genders generated an average transaction value above 300?  
SELECT gender,
       AVG (`Total Amount`) As avg_transact
       FROM brightlearn.data.retail_sales_dataset
       GROUP BY Gender
       HAVING AVG_transact >300;



-- 4. Find the top 5 customers with the highest total spending. 
SELECT `Customer ID`,
       `Total Amount`
       FROM brightlearn.data.retail_sales_dataset
       ORDER BY `Total Amount` DESC
       LIMIT 5;


-- 5. Which product categories have more than 300 transactions? 
SELECT `Product Category`,
        COUNT(*) As total_transactions
       FROM brightlearn.data.retail_sales_dataset
        GROUP BY `Product Category`
      HAVING COUNT(*) > 300;

-- 6. What is the highest sale amount recorded for each product category? 
SELECT `Product Category`,
        MAX (`Total Amount`) As max_sales
         FROM brightlearn.data.retail_sales_dataset
       GROUP BY `Product Category`; 



-- 7. Find the minimum sale amount for each gender.  
SELECT `Gender`,
        MIN (`Total Amount`) As min_sales
         FROM brightlearn.data.retail_sales_dataset
       GROUP BY `Gender`; 


-- 8. Show categories where the average quantity sold is greater than 2. 
SELECT `Product Category`,
         AVG (`Quantity`) As avg_sales
         FROM brightlearn.data.retail_sales_dataset
       GROUP BY `Product Category`
       HAVING AVG(`Quantity`) >2;


-- 9. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.
SELECT `Customer ID`,
SUM(`Total Amount`) AS total_sales
FROM brightlearn.data.retail_sales_dataset
WHERE `Age` BETWEEN 25 AND 40
  AND `Product Category` IN ('Beauty', 'Clothing')
  GROUP BY `Customer ID`;


-- 10. Which product categories have a maximum sale amount greater than 1000? 
SELECT `Product Category`,
        MAX (`Total Amount`) As max_sales
         FROM brightlearn.data.retail_sales_dataset
       GROUP BY `Product Category`
       HAVING MAX(`Total Amount`) >1000;


-- 11. Show the top 3 categories by average sales value, excluding customers under 25. 
SELECT `Product Category`,
        AVG(`Total Amount`) As avg_sales
         FROM brightlearn.data.retail_sales_dataset
         WHERE `Age` <= 25
       GROUP BY `Product Category`
       HAVING AVG(`Total Amount`) >1000
       LIMIT 3;

-- COMMAND ----------


