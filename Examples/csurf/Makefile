CXX=g++

###############
## Use generic witnesses
###############
#CXXFLAGS=-g -Wall -O2 -DSWPDS -DDBGSWPDS -DGENERIC_WITNESSES -DNODE_WITNESS_TRACE -DWITNESS_TRACE
#CXXFLAGS=-g -Wall -O2 -DSWPDS -DDBGSWPDS -DGENERIC_WITNESSES -DWITNESS_TRACE

###############
## Use non generic witnesses
###############
CXXFLAGS=-g -Wall -O2 -DSWPDS -DDBGSWPDS -DWITNESS_TRACE

###############
## No witnesses
###############
#CXXFLAGS=-g -Wall -O2 -DSWPDS -DDBGSWPDS -DDBGWPDS
#CXXFLAGS=-g -Wall -O2 -DSWPDS -DDBGSWPDS

CXXSFX=.cpp
WPDS_DIR=../..
INCLUDE=-I. -I$(WPDS_DIR)
LIBS=-L$(WPDS_DIR) -lwpds
SRCS=pa$(CXXSFX)
BINARIES=pa #pa2
all: $(BINARIES)

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $(INCLUDE) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

$(CXXSFX).o:
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

pa: pa.o
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

pa2: pa2.o
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

include ../Makefile.common

include $(SRCS:$(CXXSFX)=.d) 

.PHONY: clean
clean:
	rm -rf *.d *.o *~ core $(BINARIES)
