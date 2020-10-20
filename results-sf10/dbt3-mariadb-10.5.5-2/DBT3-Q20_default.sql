select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
EXPLAIN select
	s_name,
	s_address
from
	supplier,
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'dodger%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < date_add( '1994-01-01' ,interval '1' year)
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'INDIA'
order by
	s_name;
show status like 'last_query_cost';
SELECT CAST(timer_wait AS DECIMAL(21,5))/1000000000000 't (s)', sql_text FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 8 OFFSET 2;
SELECT AVG(time) avg, STDDEV_POP(time)/AVG(time) CoV FROM (SELECT CAST(timer_wait AS DECIMAL(21,5))/ 1000000000000 time FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 8 OFFSET 3) tm;
