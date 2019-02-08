CXX_1 = /proj/tpinux/tpinux_colts-latest/i686-linux/bin/arm-linux-gnueabihf-g++
CXX_2 = /proj/tpinux/tpinux_colts-latest.old/i686-linux/bin/arm-linux-gnueabihf-g++
HOST_LIB = /proj/tpinux/tpinux_colts-latest.old/i686-linux/lib

export LD_LIBRARY_PATH := $(HOST_LIB)

all: cast1.o cast2.o

cast1.o: cast.cpp
	$(CXX_1) $^ -o $@

cast2.o: cast.cpp
	$(CXX_2) $^ -o $@

clean:
	rm -f cast1.o cast2.o
