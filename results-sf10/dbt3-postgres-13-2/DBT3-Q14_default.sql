\timing on
select pg_stat_statements_reset();
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q14%';
select pg_stat_statements_reset();
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
/* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
EXPLAIN /* DBT3-Q14 */ select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem,
	part
where
	l_partkey = p_partkey
	and l_shipdate >= date '1993-03-01'
	and l_shipdate < cast(date '1993-03-01' + interval '1 month' as date);
\timing off
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q14%';
