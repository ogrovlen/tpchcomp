\timing on
select pg_stat_statements_reset();
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q4%';
select pg_stat_statements_reset();
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
/* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
EXPLAIN /* DBT3-Q4 */ select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1996-08-01'
	and o_orderdate < cast(date '1996-08-01' + interval '3 month' as date)
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
\timing off
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q4%';
