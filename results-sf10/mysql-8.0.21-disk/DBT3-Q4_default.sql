select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >=  '1996-08-01'
	and o_orderdate < date_add( '1996-08-01', interval '3' month)
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority;
select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >=  '1996-08-01'
	and o_orderdate < date_add( '1996-08-01', interval '3' month)
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority;
select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >=  '1996-08-01'
	and o_orderdate < date_add( '1996-08-01', interval '3' month)
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority;
select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >=  '1996-08-01'
	and o_orderdate < date_add( '1996-08-01', interval '3' month)
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority;
select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >=  '1996-08-01'
	and o_orderdate < date_add( '1996-08-01', interval '3' month)
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority;
EXPLAIN select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >=  '1996-08-01'
	and o_orderdate < date_add( '1996-08-01', interval '3' month)
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority;
show status like 'last_query_cost';
SELECT CAST(timer_wait AS DECIMAL(21,5))/1000000000000 't (s)', sql_text FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 2;
SELECT AVG(time) avg, STDDEV_POP(time)/AVG(time) CoV FROM (SELECT CAST(timer_wait AS DECIMAL(21,5))/ 1000000000000 time FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 3) tm;
