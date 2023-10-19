# Write your MySQL query statement below
SELECT prices.product_id, ifnull(round(sum(units * price)/sum(units),2),0) as average_price
FROM prices
left JOIN unitssold ON prices.product_id = unitssold.product_id and 
                   unitssold.purchase_date >= start_date and unitssold.purchase_date <=end_date
group by product_id;
