select b.Product_name as product_name, count(a.*) as purchased_times
From {{ref('stg_order_product')}} a join {{ref('stg_products')}} b 
on a.product_id=b.product_id
group by 1 
order by 2 desc limit 10

--top 10 best sell product ( by id)