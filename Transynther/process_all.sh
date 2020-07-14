LOGS=logs/*
for i in $LOGS
do
	./process.py $i
done
