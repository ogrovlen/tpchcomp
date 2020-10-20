import sys, os, subprocess
from queries import TestQueries

def createDir(name):
    if not os.path.exists(name):
        os.makedirs(name)

def mysqlVersion():
    command = mysqlBinDir + '/use -uroot -e "select version()"'
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, )
    output = proc.communicate()[0]
    try:
        version = output.splitlines()[1]
    except IndexError, e:
        print >> sys.stderr, "Unable to identify version: ", e
        exit
    return version[0:3]

mysqlBinDir = os.environ['MSBDIR']

qfile = sys.argv[1]
sf = sys.argv[2]
nruns = int(sys.argv[3])
testname = sys.argv[4]

db = "dbt3_sf" + sf
resultdir = os.path.expandvars("$HOME/dbt3/results-sf") + sf + "/" + testname
createDir(resultdir)

version = mysqlVersion()
queries = None
if version.startswith("5"):
    queries = qfile + "-57-SF" + sf + ".sql"
if queries is None or not os.path.exists(queries):
    queries = qfile + "-SF" + sf + ".sql"
if not os.path.exists(queries):
    queries = qfile + ".sql"

q =  TestQueries(queries)

inits = ""
settings = ""
mode = ""
testvar = "default"
q.run(resultdir, testvar, db, nruns, settings + mode + inits, mysqlBinDir)
