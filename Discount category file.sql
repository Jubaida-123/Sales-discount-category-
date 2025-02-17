use sales;

/*4. Sales Breakdown by Discount Range Scenario: The Marketing Team wants to understand the impact of different discount ranges on sales. Requirements:
 • Create a calculated field that segments discounts into categories: 
 o No Discount: discount_amount = 0 o Low Discount: discount_amount < 10 o Medium Discount: 
 discount_amount between 10 and 20 o High Discount: discount_amount > 20 • Create a bar chart that shows the sales (SUM(before_discount)) 
 for each discount category. Key Features to Use: 
 • discount_amount • before_discount*/
 
 
show tables;

select * from order_detail;



SELECT*,
    CASE  
        WHEN discount_amount = 0 THEN 'No Discount'  
        WHEN before_discount < 10 THEN 'Low Discount'  
        WHEN after_discount BETWEEN 10 AND 20 THEN 'Medium Discount'  
        WHEN Price > 20 THEN 'High Discount'  
        ELSE 'discount_amount'  
        END AS discount_category
    From order_detail;
    
    
    SELECT 
    discount_amount,
    before_discount,
    CASE 
        WHEN discount_amount = 0 THEN 'No Discount'
        WHEN before_discount < 10 THEN 'Low Discount'
        WHEN after_discount BETWEEN 10 AND 20 THEN 'Medium Discount'
        WHEN Price  > 20 THEN 'High Discount'
    END AS discount_category
FROM order_detail;

    
SELECT 
    CASE 
        WHEN discount_amount = 0 THEN 'No Discount'
        WHEN before_discount < 10 THEN 'Low Discount'
        WHEN after_discount BETWEEN 10 AND 20 THEN 'Medium Discount'
        WHEN price > 20 THEN 'High Discount'
    END AS discount_category,
    SUM(before_discount) AS discount_amount
FROM order_detail
GROUP BY discount_category
ORDER BY discount_amount  DESC;

show tables;

select * from customer_detail;
select* from order_detail;
select *from sku_detail;