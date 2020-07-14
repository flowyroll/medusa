#!/bin/bash
CPU1=3
CPU2=7

LEAKER=../wc_v2_unalignedSTL/leak
SECRET="V"
TIME=10
REPEAT=2

rm -f result > /dev/null
echo "memory,method,speed,correct" >> result

FLAGS="S$SECRET"

for MT in WC WB WT UC;
do
    for METHOD in repsto repmov nt;
    do

        SUM_CORRECT=0
        SUM_TOTAL=0
        for i in $(seq 1 $REPEAT);
        do
            timeout $TIME taskset -c $CPU1 $LEAKER > out &
            timeout $TIME taskset -c $CPU2 ./secret $MT $METHOD $FLAGS

            let CORRECT=$(sort -r -n out | uniq -c | grep ": $SECRET" | awk '{print $1}' | head -1)/$TIME
            let TOTAL=$(wc -l out | awk '{print $1}')/$TIME
            let SUM_CORRECT=$SUM_CORRECT+$CORRECT
            let SUM_TOTAL=$SUM_TOTAL+$TOTAL
            let PERCENT=100*$CORRECT/$TOTAL
            rm -f out > /dev/null
        done

        let SUM_PERCENT=100*$SUM_CORRECT/$SUM_TOTAL
        let SPEED=$SUM_TOTAL/$REPEAT

        echo ""
        echo "$SPEED B/s ($SUM_PERCENT% correct)"
        echo "$MT,$METHOD,$SPEED,$SUM_PERCENT" >> result
    done
done
