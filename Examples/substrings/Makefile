CXX=g++
CXXBASE=-g -Wall -Wformat=2 -O2
CXXFLAGS=$(CXXBASE) -DDBGWPDS
CXXSFX=.cpp
WPDS_DIR=../..
INCLUDE=-I. -I$(WPDS_DIR)
LIBS=-L$(WPDS_DIR) -lwpds
SRCS=stringwrapper$(CXXSFX)
OBJS=$(SRCS:$(CXXSFX)=.o)
MAINS=test_post.cpp test_pre.cpp tpostpre.cpp int_post.cpp test_extender.cpp test_post_witness.cpp
BINARIES=test_post test_pre tpostpre int_post test_extender

all: $(BINARIES) test_post_witness

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $(INCLUDE) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

$(CXXSFX).o:
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

test_pre: test_pre.o $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

test_post: test_post.o  $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

test_post_witness: test_post_witness.cpp  $(OBJS)
	$(CXX) $(CXXFLAGS) -DWITNESS_TRACE $(INCLUDE) $^ -o $@ $(LIBS)

int_post: int_post.o  $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

tpostpre: tpostpre.o $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

test_extender: test_extender.o $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)


include ../Makefile.common
include $(SRCS:$(CXXSFX)=.d) 
include $(MAINS:$(CXXSFX)=.d) 

.PHONY: clean
clean:
	rm -rf *.d *.o *~ core $(BINARIES) test_post_witness
