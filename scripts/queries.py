import subprocess

def xec(command, dir):
    # print command
    return subprocess.check_output(command, shell=True, cwd=dir, stderr=subprocess.STDOUT)

class Query:
    def __init__(self, qid, qstr):
        self.qid = qid
        self.query = qstr

class TestQueries:
    def __init__(self, queryfile):
        self.queries = []
        with open(queryfile, "r") as f:
            newQuery = True
            qid = ""
            qstr = ""
            for line in f:
                if not line.strip():
                    if not newQuery:
                        self.queries.append(Query(qid, qstr))
                        newQuery = True
                    # else just ignore empty line    
                elif newQuery:
                    qid = line.split()[1]
                    qstr = ""
                    newQuery = False
                else:
                    qstr += line
            # Add last query if eof was reached without an empty line        
            if not newQuery:
                self.queries.append(Query(qid, qstr))

    def runPostgres(self, resultdir, db, testvariant, nruns, settings):
        for q in self.queries:
            infilename = resultdir + '/' + q.qid + '_' + testvariant + ".sql"
            outfilename = resultdir + '/' + q.qid + '_' + testvariant + ".out"
            infile = open(infilename, "w")
            infile.write(settings)
            infile.write("select pg_stat_statements_reset();\n")
            # Two warmup runs
            infile.write(q.query)
            infile.write(q.query)
            infile.write("select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV "
                         "from pg_stat_statements where substr(query, 4, 8) like '" +  q.qid + "%';\n")
            infile.write("select pg_stat_statements_reset();\n")
            # Repeat query remaining number of times
            for i in range(nruns-2):
                infile.write(q.query)
            # Get query plan for query    
            infile.write("EXPLAIN " + q.query)
            # Turn off timing, so results are on last line
            infile.write("\\timing off\n")
            infile.write("select mean_exec_time/1000 as secs, stddev_exec_time/mean_exec_time as CoV "
                         "from pg_stat_statements where substr(query, 4, 8) like '" +  q.qid + "%';\n")
            infile.close()
                         
            # Execute query
            command = "psql --csv -d " + db + " < " + infilename + " > " + outfilename
            xec(command, '.')
                         

    def run(self, resultdir, testvariant, db, nruns, settings, bindir):
        for q in self.queries:
            infilename = resultdir + '/' + q.qid + '_' + testvariant + ".sql"
            outfilename = resultdir + '/' + q.qid + '_' + testvariant + ".out"
            infile = open(infilename, "w")
            infile.write(settings)
            # Repeat query requested number of time
            for i in range(nruns):
                infile.write(q.query)
            # Get query plan for query    
            infile.write("EXPLAIN " + q.query)
            infile.write("show status like 'last_query_cost';\n")

            # Get execution times from performance schema, ignore first 2
            # Assumptions: 
            # performance_schema_events_statements_history_size is large enough
            # TODO: Query for a specific thread to allow for concurrent 
            # executions.
            infile.write("SELECT CAST(timer_wait AS DECIMAL(21,5))"
                         "/1000000000000 't (s)', sql_text "
                         "FROM performance_schema.events_statements_history "
                         "ORDER BY timer_start DESC LIMIT " + str(nruns) + \
                         " OFFSET 2;\n")
            # Compute average and coefficient of variation for last 8 runs
            nresultruns = 8 if nruns >= 10 else nruns-2
            infile.write("SELECT AVG(time) avg, STDDEV_POP(time)/AVG(time) CoV"
                         " FROM (SELECT CAST(timer_wait AS DECIMAL(21,5))/"
                         " 1000000000000 time "
                         "FROM performance_schema.events_statements_history "
                         "ORDER BY timer_start DESC LIMIT " + str(nresultruns) + \
                         " OFFSET 3) tm;\n")
            infile.close()

            # Execute query
#            command = bindir + "/mysql -uroot --socket=/tmp/mysql-og.sock" + \
#                      db + " < " + infilename + " > " + outfilename
            command = bindir + "/use -uroot " + \
                      db + " < " + infilename + " > " + outfilename
            xec(command, '.')


    def results(self, resultdir, testvariant):
        resfilename = resultdir + '/res_' + testvariant + ".csv"
        resfile = open(resfilename, "w")
        for q in self.queries:
            runfilename = resultdir + '/' + q.qid + '_' + testvariant + ".out"
            with open(runfilename, 'r') as f:
                resline = f.readlines()[-1]
            res = resline.split()
            resfile.write(q.qid + ',' + res[0] + ',' + res[1] + '\n')
        resfile.close()
            

