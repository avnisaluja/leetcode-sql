# Write your MySQL query statement below
with cte as (select min(year) as first_year,product_id from sales
group by product_id)
select sales.quantity ,sales.price,cte.* from sales inner join cte on cte.first_year=sales.year and sales.product_id=cte.product_id