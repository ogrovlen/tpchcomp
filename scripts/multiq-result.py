import sys, os
from queries import TestQueries

qfile = sys.argv[1]
sf = sys.argv[2]
testname = sys.argv[3]

queries = qfile + "-SF" + sf + ".sql"
if not os.path.exists(queries):
    queries = qfile + ".sql"

resultdir = os.path.expandvars("$HOME/dbt3/results-sf") + sf + "/" + testname
testvar = "default"
#testvar = "bka"

q =  TestQueries(queries)
q.results(resultdir, testvar)



