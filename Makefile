CFLAGS+=-I./mpich-3.4a3/include
LDFLAGS+=-L./mpich-3.4a3/lib -Wl,-rpath,./mpich/lib
LDLIBS+=-lmpi
