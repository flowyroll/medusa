for i in {1..100}
do
    echo "Proceeed: $i"
    ./process_key_1024.py $i > data/processed/try$i.txt
done
