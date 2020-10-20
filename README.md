# Details from TPC-H results presented at Percona Live ONLINE, October 2020

This repository contains test framework, configuration files, and test results from running TPC-H queries on MySQL, MariaDB and PostgreSQL.

A summary of the results can be found here: https://docs.google.com/spreadsheets/d/1u-rFu13xyi3xHFiOQpCJZGMvXz8NyHk9K340p8jw5Zs/edit?usp=sharing

A description of directories:

config - config files used for MySQL/MariaDB and PostgreSQL

scripts - Scripts used to create databases, generate queries, and process results

results-sf10 - Each sub-directory represents one test run.  Contains 3 types of files:
  * .sql: Script that contains the SQL statements to run for the test of one query repeated a number of times 
  * .out: Output of test-run.  Contains query-results, output from EXPLAIN, and timings of the queries run
  * .csv: Summary of the timings for the queries run in this test run
   
The basic idea is that an .sql file is generated with the requested number of repititions of the query. Ten repetitions are normally used, except for the disk-bound test where each query is repeated 5 times.  EXPLAIN for the query is also added, and the timings for the queries are fetched from performance_schema for MySQL/MariaDB and pg_stat_statements for PostgreSQL.  This file is piped into the command-line client (mysql/psql), and the output is stored in the corresponding .out file.  The last line of this file will contain the average run time (excluding the first two) and the coeffiecient of variation.  Except for the disk-bound tests, each test run has been repeated 3 times, and the minimum of the average from each test run is used as the final result.

See README.md in the scripts directory for a description of the scripts files.
