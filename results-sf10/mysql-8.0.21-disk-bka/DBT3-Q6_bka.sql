set optimizer_switch='mrr_cost_based=off,batched_key_access=on';
select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= '1995-01-01'
	and l_shipdate < date_add( '1995-01-01' , interval '1' year)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= '1995-01-01'
	and l_shipdate < date_add( '1995-01-01' , interval '1' year)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= '1995-01-01'
	and l_shipdate < date_add( '1995-01-01' , interval '1' year)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= '1995-01-01'
	and l_shipdate < date_add( '1995-01-01' , interval '1' year)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= '1995-01-01'
	and l_shipdate < date_add( '1995-01-01' , interval '1' year)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
EXPLAIN select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= '1995-01-01'
	and l_shipdate < date_add( '1995-01-01' , interval '1' year)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
show status like 'last_query_cost';
SELECT CAST(timer_wait AS DECIMAL(21,5))/1000000000000 't (s)', sql_text FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 2;
SELECT AVG(time) avg, STDDEV_POP(time)/AVG(time) CoV FROM (SELECT CAST(timer_wait AS DECIMAL(21,5))/ 1000000000000 time FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 3) tm;
