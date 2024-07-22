CXX=g++
CXXSFX=.cpp
PROFILE=-pg
#WPDSFLAGS=-DDBGWPDS
CXXFLAGS=-g -Wall $(PROFILE) $(WPDSFLAGS)
WPDS_DIR=../..
INCLUDE=-I. -I$(WPDS_DIR)
LIBS=-L$(WPDS_DIR) -lwpds
SRCS=tfa$(CXXSFX) stringwrapper$(CXXSFX)
OBJS=$(SRCS:$(CXXSFX)=.o)
BINARIES=tfa

all: $(BINARIES)

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $(INCLUDE) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

$(CXXSFX).o:
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

tfa: $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ $^ $(LIBS)

include ../Makefile.common

include $(SRCS:$(CXXSFX)=.d) 

.PHONY: clean
clean:
	rm -rf *.d *.o *~ core $(BINARIES)
