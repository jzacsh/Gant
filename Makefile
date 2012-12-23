CFLAGS=-g -Wall
LDFLAGS=-lpthread -lm

OBJS=gant.o antlib.o

all:	gant

gant: $(OBJS)
	$(CXX) $(CFLAGS) $(OBJS) -o $@ $(LDFLAGS)

gant.o:	gant.c antdefs.h

antlib.o: antlib.c antdefs.h

clean:
	rm *.o gant
