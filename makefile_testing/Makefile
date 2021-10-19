# var = $(shell pwd)

output.exe: main.o message.o
	g++ main.o message.o -o output.exe
	@pwd
# path != pwd

y += a

main.o: main.cpp
ifeq ($(findstring abc,abcd),abc)
	@echo $(y)
	g++ $(CCFLAGS) main.cpp
else 
	@echo CCFLAGS = $(CCFLAGS)
endif

message.o: message.cpp message.hpp 
	g++ $(CCFLAGS) message.cpp 

# target: dependencies 
# 	action
CCFLAGS := -c

clean:
	rm -f *.o *.exe *.gch