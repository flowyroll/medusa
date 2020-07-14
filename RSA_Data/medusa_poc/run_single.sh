for i in {0..5}
do
    echo $i
    sudo taskset -c 1 ./leak_ymmm_0_xmm_1 $((i * 8)) 20000 > leak_ymmm_0_xmm_1_x$i.txt
    sudo taskset -c 1 ./leak_ymmm_1_xmm_1 $((i * 8)) 10000 > leak_ymmm_1_xmm_1_x$i.txt
    sudo taskset -c 1 ./leak_ymmm_1_xmm_0 $((i * 8)) 10000 > leak_ymmm_1_xmm_0_x$i.txt
done

