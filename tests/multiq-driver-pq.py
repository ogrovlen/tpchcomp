import sys, os, subprocess
from queries import TestQueries

def createDir(name):
    if not os.path.exists(name):
        os.makedirs(name)

def mysqlVersion():
    sqlFile = open(".vers.sql", "w")
    sqlFile.write("select version();\n")
    sqlFile.close()

    command = mysqlBinDir + "/mysql -uroot --socket=/tmp/mysql-og.sock < .vers.sql" 
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, )
    output = proc.communicate()[0]
    try:
        version = output.splitlines()[1]
    except IndexError, e:
        print >> sys.stderr, "Unable to identify version: ", e
        exit
    if version.startswith("5.5") :
        return "5.5"
    elif version.startswith("5.6") :
        return "5.6"
    elif version.startswith("5.7") :
        return "5.7"
    elif version.startswith("8.0") :
        return "8.0"
    else :
        return "Unsupported!"

mysqlBinDir = os.environ['MYSQL_BINDIR']
mysqlDBDir = os.environ['MYDATA']

qfile = sys.argv[1]
sf = sys.argv[2]
nruns = int(sys.argv[3])
testname = sys.argv[4]

queries = qfile + "-SF" + sf + ".sql"
if not os.path.exists(queries):
    queries = qfile + ".sql"

db = "dbt3_sf" + sf
resultdir = os.path.expandvars("$HOME/dbt3/results-sf") + sf + "/" + testname

createDir(resultdir)
version = mysqlVersion()

# Preload tables and indexes so that all is run in memory
command = mysqlBinDir + "/mysql -uroot --socket=" + mysqlDBDir + "/mysql-og.sock " + db + " < preload-withindex.sql" 
try:
    retcode = subprocess.call(command, shell=True)
    if retcode < 0:
        print >> sys.stderr, "Terminated by signal", -retcode
        exit
except OSError, e:
    print >> sys.stderr, "Execution failed:", e, command
    exit


q =  TestQueries(queries)
#for qs in q.queries:
#    print qs.query

# if (version == "Unsupported!") :
#     exit

inits = "show index from customer;\n show index from lineitem;\n show index from nation;\n show index from orders;\n show index from part;\n show index from partsupp;\n show index from region;\n show index from supplier;\n"

#settings = "set optimizer_switch='index_condition_pushdown=off';\n" + settings
#settings = "set internal_tmp_mem_storage_engine=MEMORY;\n" + settings

#for dop in [0,1,2,3,4,5,6,7,8,10,12,14,16,20,24,28,32,40,48,58,64]:
for dop in [0, 1, 2, 4, 8, 16, 32, 64]:
#for dop in [64, 32, 16, 8, 4, 2, 1, 0]:
# for dop in [128, 256]:
    settings = "set max_parallel_degree=" + str(dop) + ";\n"
    settings += "set join_buffer_size=" + str(2048*1024*1024) + ";\n"
#    mode = "set force_parallel_mode=on;\n"
#    settings += "set parallel_query_switch='parallel_range_scan_extra_cost=on';\n";
#    settings += "set optimize_access_method_cost=off;\n"
#    settings += "set resource group cpu1;\n"
    mode = "SET parallel_query_switch='enable_parallel_hash_join=on';\n"
    testvar = "dop" + str(dop)

    q.run(resultdir, testvar, db, nruns, settings + mode + inits, mysqlBinDir)
#    mode = "SET parallel_query_switch='enable_parallel_hash_join=off';\n"
#    testvar = "nophj_dop" + str(dop)

#    q.run(resultdir, testvar, db, nruns, settings + mode + inits, mysqlBinDir, mysqlDBDir)

