for c in {96..100}
do
    mkdir ../data/$c
    for i in {0..5}
    do
        echo $c $i
        sudo taskset -c 1 ./leak_ymmm_0_xmm_1 $((i * 8)) 20000 > ../data/$c/leak_ymmm_0_xmm_1_x$i.txt
        sudo taskset -c 1 ./leak_ymmm_1_xmm_1 $((i * 8)) 10000 > ../data/$c/leak_ymmm_1_xmm_1_x$i.txt
        sudo taskset -c 1 ./leak_ymmm_1_xmm_0 $((i * 8)) 10000 > ../data/$c/leak_ymmm_1_xmm_0_x$i.txt
    done
done
