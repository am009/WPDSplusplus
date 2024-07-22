CXX=g++
CXXFLAGS=-g -Wall -O2 -DDBGWPDS
CXXSFX=.cc
#CXXFLAGS=-g -Wall -O2 -DDBGREFPTR
#CXXFLAGS=-g -Wall -O2
WPDS_DIR=../..
INCLUDE=-I. -I$(WPDS_DIR)
LIBS=-L$(WPDS_DIR) -lwpds
SRCS=elem$(CXXSFX) chkint$(CXXSFX)
OBJS=$(SRCS:$(CXXSFX)=.o)
BINARIES=chkint
all: $(BINARIES)

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $(INCLUDE) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

$(CXXSFX).o:
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

chkint: $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

include ../Makefile.common

include $(SRCS:$(CXXSFX)=.d) 

.PHONY: clean
clean:
	rm -rf *.d *.o *~ core $(BINARIES)
