\timing on
select pg_stat_statements_reset();
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q13%';
select pg_stat_statements_reset();
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
/* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
EXPLAIN /* DBT3-Q13 */ select
	c_count,
	count(*) as custdist
from
	(
		select
			c_custkey,
			count(o_orderkey)
		from
			customer left outer join orders on
				c_custkey = o_custkey
				and o_comment not like '%special%packages%'
		group by
			c_custkey
	) as c_orders (c_custkey, c_count) 
group by
	c_count
order by
	custdist desc,
	c_count desc;
\timing off
select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV from pg_stat_statements where substr(query, 4, 8) like 'DBT3-Q13%';
