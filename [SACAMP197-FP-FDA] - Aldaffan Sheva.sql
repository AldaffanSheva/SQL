select * from customer_table;
select * from course_table;
select * from sample_order;

select category,
count (course_id)
from course_table
group by category;

SELECT *
from ((sample_order
full outer join customer_table on sample_order.user_id = customer_table.user_id)
full outer join course_table on sample_order.course_id = course_table.course_id);

SELECT customer_table.region, 
count (sample_order.discount)
from ((sample_order
full outer join customer_table on sample_order.user_id = customer_table.user_id)
full outer join course_table on sample_order.course_id = course_table.course_id)
where discount > 0 or not null
group by customer_table.region;