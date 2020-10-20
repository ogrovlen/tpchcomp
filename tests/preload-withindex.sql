select count(*) from supplier use index();
select count(*) from part use index();
select count(*) from partsupp use index();
select count(*) from customer use index();
select count(*) from orders use index();
select count(*) from lineitem use index();
select count(*) from nation use index();
select count(*) from region use index();
select count(s_nationkey) from supplier;
select count(distinct ps_partkey) from partsupp;
select count(distinct ps_suppkey) from partsupp;
select count(c_nationkey) from customer;
select count(o_custkey) from orders;
select count(o_orderdate) from orders;
select count(distinct l_orderkey) from lineitem;
select count(l_partkey) from lineitem;
select count(l_suppkey) from lineitem;
select count(distinct l_partkey, l_suppkey) from lineitem;
select count(l_shipdate) from lineitem;
select count(n_regionkey) from nation;
