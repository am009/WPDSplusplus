# Cygwin / Linux differences:
ifdef WIN32
 EXE = .exe
else
 EXE = 
endif

CXX=g++
CXXFLAGS=-g -Wall -Wno-non-template-friend -O2 -DDWPDS
CXXSFX=.cpp
WPDS_DIR=../..
INCLUDE=-I. -I$(WPDS_DIR) -I../GenKill
LIBS=-L$(WPDS_DIR) -lwpds
SRCS=RegAtomSet$(CXXSFX)
OBJS=$(SRCS:$(CXXSFX)=.o)
DRIVER=driver$(EXE)
BINARIES=$(DRIVER)

all: $(BINARIES)

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $(INCLUDE) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

$(CXXSFX).o:
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

$(DRIVER): driver$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

include ../Makefile.common

#include $(SRCS:$(CXXSFX)=.d) 

.PHONY: clean
clean:
	rm -rf *.d *.o *~ core $(BINARIES)
