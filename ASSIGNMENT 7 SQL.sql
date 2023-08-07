USE day2;
SELECT*FROM bank_inventory_pricing;

# 1) Which product has the highest estimated sale price, and what is the price?
SELECT PRODUCT,PRICE, ESTIMATED_SALE_PRICE
FROM bank_inventory_pricing
ORDER BY Estimated_sale_price DESC
LIMIT 1;

#2) Calculate the total profit for each product (Estimated Sale Price - Purchase Cost).
SELECT  Product,purchase_cost,Estimated_sale_price, 
Estimated_sale_price - purchase_cost as Total_Profit
FROM bank_inventory_pricing;

#3) How many products have missing values in the "purchase_cost" column?
SELECT COUNT(PRODUCT) 
FROM bank_inventory_pricing
WHERE PURCHASE_COST IS NULL;

# 4) Calculate the total purchase cost for each product.
SELECT PRODUCT, SUM(PURCHASE_COST)
FROM bank_inventory_pricing
GROUP BY PRODUCT;

#5) Calculate the total revenue for each product (Quantity * Estimated Sale Price).
SELECT PRODUCT, QUANTITY, ESTIMATED_SALE_PRICE, 
QUANTITY * ESTIMATED_SALE_PRICE AS TOTAL_REVENUE
FROM bank_inventory_pricing;
