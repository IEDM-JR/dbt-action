select Product_name as product_name, count(*) as purchased_times, department, aisle
From {{ref('int_fct_table')}}
group by product_name,department,aisle
order by 2 desc limit 10