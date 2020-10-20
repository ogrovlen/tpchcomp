import sys, re

from queries import TestQueries

def findPlan(test, run):
    file = test + "/" + run + ".out"
    try:
        fobj = open(file, 'r')
    except IOError:
        return
    # Skip lines before plan
    eachLine = None
    for eachLine in fobj:
        if eachLine.startswith("id	select_type"):
            break
    
    if not eachLine:
        return
    cols = eachLine.split()
    keys = {}
    j = 0
    for h in cols:
        keys[h] = j
        j += 1

    values = []    
    i = 0       
    for eachLine in fobj:
        if re.match("[0-9]", eachLine):
            values.append(eachLine.split())
            i += 1
        else:
            break

    fobj.close()
    return keys, values

queries = sys.argv[1]
test1 = sys.argv[2]
test2 = sys.argv[3]
testruns = ['default']
#testruns = ['bka']
#testruns = ['nosj','mat','sj','sjfm','sjls','sjmat','sjdups']

q =  TestQueries(queries)

for run in testruns:
    for query in q.queries:
        runName1 = query.qid + "_" + run
        runName2 = query.qid + "_" + run

        keys1, values1 = findPlan(test1, runName1)
        keys2, values2 = findPlan(test2, runName2)

        diff = len(values1) != len(values2)

        for row1, row2 in zip(values1, values2):
            for cols in ['id', 'table', 'key', 'key_len']:
                diff = row1[keys1[cols]] != row2[keys2[cols]]
                if diff:
                    break
            if diff:
                break
        if not diff:
            diff = values1[keys1['Extra']:] != values2[keys2['Extra']:]

        if diff:
            print query.qid
            for row1 in values1:
                print "- " + " ".join(row1)
            for row2 in values2:
                print "+ " + " ".join(row2)
