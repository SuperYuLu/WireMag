PROG = run
CC = g++
CPPFLAGS = -g -Wall
OBJS = main.o wire.o biotSavartLaw.o vectorAddOns.o genGrid.o


$(PROG): $(OBJS)
	$(CC) -o $(PROG) $(OBJS)

main.o: main.h
	$(CC) $(CPPFLAGS) -c main.cc

vectorAddOns.o: vectorAddOns.h
	$(CC) $(CPPFLAGS) -c vectorAddOns.cc

wire.o: wire.h
	$(CC) $(CPPFLAGS) -c wire.cc

genGrid.o: genGrid.h
	$(CC) $(CPPFLAGS) -c genGrid.cc


biotSavartLaw.o: biotSavartLaw.h
	$(CC) $(CPPFLAGS) -c biotSavartLaw.cc

clean:
	rm $(PROG) $(OBJS)