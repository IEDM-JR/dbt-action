select Product_id, count(*) From {{ref('stg_order_product')}} as purchased_times
group by 1 
order by 2 desc limit 10

--top 10 best sell product ( by id)