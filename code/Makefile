CFLAGS=-Wall -g

rPiRx: rPiRx.o radioPinFunctions.o nrf24.o
	gcc -o rPiRx rPiRx.o radioPinFunctions.o nrf24.o -l bcm2835 -l mysqlclient

rPiRx.o:
	gcc -c rPiRx.c

radioPinFunctions.o:
	gcc -c ./nrf24/radioPinFunctions.c

nrf24.o:
	gcc -c ./nrf24/nrf24.c

clean:
	rm -f rPiRx nrf24.o rPiRx.o radioPinFunctions.o
