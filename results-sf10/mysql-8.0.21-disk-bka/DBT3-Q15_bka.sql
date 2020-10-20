set optimizer_switch='mrr_cost_based=off,batched_key_access=on';
with revenue (supplier_no, total_revenue) as (
	select
		l_suppkey,
		sum(l_extendedprice * (1 - l_discount))
	from
		lineitem
	where
		l_shipdate >= '1995-09-01'
		and l_shipdate < date_add('1995-09-01', interval '90' day)
	group by
		l_suppkey
)
select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier,
	revenue
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
			revenue
	)
order by
	s_suppkey;
with revenue (supplier_no, total_revenue) as (
	select
		l_suppkey,
		sum(l_extendedprice * (1 - l_discount))
	from
		lineitem
	where
		l_shipdate >= '1995-09-01'
		and l_shipdate < date_add('1995-09-01', interval '90' day)
	group by
		l_suppkey
)
select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier,
	revenue
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
			revenue
	)
order by
	s_suppkey;
with revenue (supplier_no, total_revenue) as (
	select
		l_suppkey,
		sum(l_extendedprice * (1 - l_discount))
	from
		lineitem
	where
		l_shipdate >= '1995-09-01'
		and l_shipdate < date_add('1995-09-01', interval '90' day)
	group by
		l_suppkey
)
select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier,
	revenue
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
			revenue
	)
order by
	s_suppkey;
with revenue (supplier_no, total_revenue) as (
	select
		l_suppkey,
		sum(l_extendedprice * (1 - l_discount))
	from
		lineitem
	where
		l_shipdate >= '1995-09-01'
		and l_shipdate < date_add('1995-09-01', interval '90' day)
	group by
		l_suppkey
)
select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier,
	revenue
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
			revenue
	)
order by
	s_suppkey;
with revenue (supplier_no, total_revenue) as (
	select
		l_suppkey,
		sum(l_extendedprice * (1 - l_discount))
	from
		lineitem
	where
		l_shipdate >= '1995-09-01'
		and l_shipdate < date_add('1995-09-01', interval '90' day)
	group by
		l_suppkey
)
select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier,
	revenue
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
			revenue
	)
order by
	s_suppkey;
EXPLAIN with revenue (supplier_no, total_revenue) as (
	select
		l_suppkey,
		sum(l_extendedprice * (1 - l_discount))
	from
		lineitem
	where
		l_shipdate >= '1995-09-01'
		and l_shipdate < date_add('1995-09-01', interval '90' day)
	group by
		l_suppkey
)
select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier,
	revenue
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
			revenue
	)
order by
	s_suppkey;
show status like 'last_query_cost';
SELECT CAST(timer_wait AS DECIMAL(21,5))/1000000000000 't (s)', sql_text FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 2;
SELECT AVG(time) avg, STDDEV_POP(time)/AVG(time) CoV FROM (SELECT CAST(timer_wait AS DECIMAL(21,5))/ 1000000000000 time FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 3) tm;
