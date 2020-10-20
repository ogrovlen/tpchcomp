import sys, os, subprocess
from queries import TestQueries

def createDir(name):
    if not os.path.exists(name):
        os.makedirs(name)

qfile = sys.argv[1]
sf = sys.argv[2]
nruns = int(sys.argv[3])
testname = sys.argv[4]

db = "dbt3_sf" + sf
resultdir = os.path.expandvars("$HOME/dbt3/results-sf") + sf + "/" + testname
createDir(resultdir)

queries = qfile + ".sql"
if not os.path.exists(queries):
    queries = qfile + "-SF" + sf + ".sql"

q =  TestQueries(queries)

inits = "\\timing on\n" + "\\pset csv_fieldsep '\t'\n"
settings = ""
mode = ""
testvar = "default"
q.runPostgres(resultdir, db, testvar, nruns, settings + mode + inits)
