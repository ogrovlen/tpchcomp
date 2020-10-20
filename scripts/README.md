This directory constains different scripts to generate databases, run tests, and collect results.  For MySQL/MariaDB dbdeployer is used to administer the databases
and run client programs.  For PostgreSQL this is done manually.

Description of scripts used to create and load databases:

  * dbt3-dbdeployer - Use dbdeployer for MySQL/MariaDB to create database and tables, load tables, and create histograms
  * dbdeployer-load-tables - Load tables, create indexes, run ANALYZE
  * dbt3-mysql-tables.sql - Create tables
  * dbt3-hist.sql - Create histograms for MySQL
  * dbt3-analyze.sql - Run ANALYZE on all tables
  * view.sql - Create the view for TPC-H Q15, only used by MySQL 5.7 which does not support CTE
  * dbt3-pg-create-tables.sql - Create tables for PostgreSQL
  * dbt3-pg-load-data - Load data and create indexes for PostgreSQL
  
Description of scripts used to run tests:

  * dbt3-run-test - Start database, run tests, stop database, collect results (MySQL/MariaDB)
  * run-pg-test - Same for PostgreSQL
  * multiq-driver.py - Reads a file with queries to be run, generate the .sql test file, and runs the test (MySQL/MariaDB)
  * multiq-driver-bka.py - Same, but turns on BKA
  * multiq-postgres.py - Same for PostgreSQL
  * multiq-plandiff.py - Find differences in query plan for two test runs
  * multiq-result.py - Collects results for a test run
  * queries.py - Basic routines used by the multiq-programs
  * dbt3-SF10.sql - Queries run for MySQL/MariaDB
  * dbt3-pg-SF10.sql - Queries for PostgreSQL
  * preload-withindex.sql - Ran before tests to load all leaf pages of tables/indexes into memory
  * preload-withindex-pg.sql - Same for PostgreSQL
  
Misc:
  * mysqld-bind-cpu - Bind the MySQL process to specific cores.  Needs to copied to the bin-directory of dbdeployer, and used for the --custom-mysqld option of "dbdeployer deploy"
  * bind-postgres - Shell script to bind PostgreSQL to specific cores
  














