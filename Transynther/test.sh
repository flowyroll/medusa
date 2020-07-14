cp $1 autogen.S
make clean
make
sudo ./app $2 $3
