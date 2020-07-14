#!/usr/bin/env python


sections = [{}, {}, {}]

for i in xrange(1, 101):
    f = open("data/processed/try%d.txt"%(i))
    line = f.readline()
    x = -1
    while line:
        line = line.strip()
        if line.startswith("Key"):
            x += 1
        else:
            cols = line.split()
            if len(cols) >= 4:
                key = "false_%s"%(cols[3])
                if len(cols) == 5:
                    key = "%s_%s"%(cols[4], cols[3])

                score = int(cols[1])
                if sections[x].has_key(key):
                    sections[x][key].append(score)
                else:
                    sections[x].update({key : [score]})
                
            



        line = f.readline()
    f.close()

m = [0, 0, 0]
m[0] = open("merge1.csv", 'w')
m[1] = open("merge2.csv", 'w')
m[2] = open("merge3.csv", 'w')

for i in xrange(len(sections)):
    m[i].write("new,1,2,3,4,5,6,7\n")
    for k in sections[i]:
        #if not k.startswith('false'):
        if len(sections[i][k]) > 10:
            m[i].write("%s,"%(k))

            for v in sections[i][k]:
                m[i].write("%s,"%(v))
            
            m[i].write("\n")

            