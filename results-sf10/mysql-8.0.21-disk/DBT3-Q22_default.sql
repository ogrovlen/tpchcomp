select
	cntrycode,
	count(*) as numcust,
	sum(c_acctbal) as totacctbal
from
	(
		select
			substr(c_phone from 1 for 2) as cntrycode,
			c_acctbal
		from
			customer
		where
			substr(c_phone from 1 for 2) in
				('18', '20', '33', '14', '16', '28', '23')
			and c_acctbal > (
				select
					avg(c_acctbal)
				from
					customer
				where
					c_acctbal > 0.00
					and substr(c_phone from 1 for 2) in
						('18', '20', '33', '14', '16', '28', '23')
			)
			and not exists (
				select
					*
				from
					orders
				where
					o_custkey = c_custkey
			)
	) as custsale
group by
	cntrycode
order by
	cntrycode;
select
	cntrycode,
	count(*) as numcust,
	sum(c_acctbal) as totacctbal
from
	(
		select
			substr(c_phone from 1 for 2) as cntrycode,
			c_acctbal
		from
			customer
		where
			substr(c_phone from 1 for 2) in
				('18', '20', '33', '14', '16', '28', '23')
			and c_acctbal > (
				select
					avg(c_acctbal)
				from
					customer
				where
					c_acctbal > 0.00
					and substr(c_phone from 1 for 2) in
						('18', '20', '33', '14', '16', '28', '23')
			)
			and not exists (
				select
					*
				from
					orders
				where
					o_custkey = c_custkey
			)
	) as custsale
group by
	cntrycode
order by
	cntrycode;
select
	cntrycode,
	count(*) as numcust,
	sum(c_acctbal) as totacctbal
from
	(
		select
			substr(c_phone from 1 for 2) as cntrycode,
			c_acctbal
		from
			customer
		where
			substr(c_phone from 1 for 2) in
				('18', '20', '33', '14', '16', '28', '23')
			and c_acctbal > (
				select
					avg(c_acctbal)
				from
					customer
				where
					c_acctbal > 0.00
					and substr(c_phone from 1 for 2) in
						('18', '20', '33', '14', '16', '28', '23')
			)
			and not exists (
				select
					*
				from
					orders
				where
					o_custkey = c_custkey
			)
	) as custsale
group by
	cntrycode
order by
	cntrycode;
select
	cntrycode,
	count(*) as numcust,
	sum(c_acctbal) as totacctbal
from
	(
		select
			substr(c_phone from 1 for 2) as cntrycode,
			c_acctbal
		from
			customer
		where
			substr(c_phone from 1 for 2) in
				('18', '20', '33', '14', '16', '28', '23')
			and c_acctbal > (
				select
					avg(c_acctbal)
				from
					customer
				where
					c_acctbal > 0.00
					and substr(c_phone from 1 for 2) in
						('18', '20', '33', '14', '16', '28', '23')
			)
			and not exists (
				select
					*
				from
					orders
				where
					o_custkey = c_custkey
			)
	) as custsale
group by
	cntrycode
order by
	cntrycode;
select
	cntrycode,
	count(*) as numcust,
	sum(c_acctbal) as totacctbal
from
	(
		select
			substr(c_phone from 1 for 2) as cntrycode,
			c_acctbal
		from
			customer
		where
			substr(c_phone from 1 for 2) in
				('18', '20', '33', '14', '16', '28', '23')
			and c_acctbal > (
				select
					avg(c_acctbal)
				from
					customer
				where
					c_acctbal > 0.00
					and substr(c_phone from 1 for 2) in
						('18', '20', '33', '14', '16', '28', '23')
			)
			and not exists (
				select
					*
				from
					orders
				where
					o_custkey = c_custkey
			)
	) as custsale
group by
	cntrycode
order by
	cntrycode;
EXPLAIN select
	cntrycode,
	count(*) as numcust,
	sum(c_acctbal) as totacctbal
from
	(
		select
			substr(c_phone from 1 for 2) as cntrycode,
			c_acctbal
		from
			customer
		where
			substr(c_phone from 1 for 2) in
				('18', '20', '33', '14', '16', '28', '23')
			and c_acctbal > (
				select
					avg(c_acctbal)
				from
					customer
				where
					c_acctbal > 0.00
					and substr(c_phone from 1 for 2) in
						('18', '20', '33', '14', '16', '28', '23')
			)
			and not exists (
				select
					*
				from
					orders
				where
					o_custkey = c_custkey
			)
	) as custsale
group by
	cntrycode
order by
	cntrycode;
show status like 'last_query_cost';
SELECT CAST(timer_wait AS DECIMAL(21,5))/1000000000000 't (s)', sql_text FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 2;
SELECT AVG(time) avg, STDDEV_POP(time)/AVG(time) CoV FROM (SELECT CAST(timer_wait AS DECIMAL(21,5))/ 1000000000000 time FROM performance_schema.events_statements_history ORDER BY timer_start DESC LIMIT 3 OFFSET 3) tm;
