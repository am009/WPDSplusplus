CXX=g++
CXXBASE=-g -Wall -O2
CXXFLAGS=$(CXXBASE)
CXXSFX=.cpp
WPDS_DIR=../..
INCLUDE=-I. -I$(WPDS_DIR)
LIBS=-L$(WPDS_DIR) -lwpds
SRCS=ExReach$(CXXSFX) Reach$(CXXSFX)
OBJS=$(SRCS:$(CXXSFX)=.o)
BINARIES=ExReach

all: $(BINARIES)

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $(INCLUDE) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

$(CXXSFX).o:
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

$(BINARIES): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)


include ../Makefile.common
include $(SRCS:$(CXXSFX)=.d) 

.PHONY: clean
clean:
	rm -rf *.d *.o *~ core $(BINARIES)
