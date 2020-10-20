create view revenue (supplier_no, total_revenue) as (
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
