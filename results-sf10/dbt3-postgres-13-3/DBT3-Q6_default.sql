\timing on
select pg_stat_statements_reset();
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q6%';
select pg_stat_statements_reset();
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
/* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
EXPLAIN /* DBT3-Q6 */ select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-01-01'
	and l_shipdate < cast(date '1995-01-01' + interval '1 year' as date)
	and l_discount between 0.08 - 0.01 and 0.08 + 0.01
	and l_quantity < 24;
\timing off
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q6%';
