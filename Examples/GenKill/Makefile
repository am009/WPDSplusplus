# Cygwin / Linux differences:
ifdef WIN32
 EXE = .exe
else
 EXE = 
endif

CXX=g++
CXXFLAGS=-g -Wall -Wno-non-template-friend -O2 -DPRIORITY_PATH_SUMMARY
CXXSFX=.cpp
WPDS_DIR=../..
INCLUDE=-I. -I$(WPDS_DIR)
LIBS=-L$(WPDS_DIR) -lwpds
SRCS=VarSet$(CXXSFX)
OBJS=$(SRCS:$(CXXSFX)=.o)
UNIT_VAR=uninit_var$(EXE)
LIVE_VAR=live_var$(EXE)
UNIT_VAR_PRE_O_POST=uninit_var.pre.o.post$(EXE)
TEST=test$(EXE)
BINARIES=$(UNIT_VAR) $(LIVE_VAR) $(TEST) $(UNIT_VAR_PRE_O_POST) \
	dlive_var duninit_var.pre.o.post duninit_var

all: $(BINARIES)
#all: uninit_var

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $(INCLUDE) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

$(CXXSFX).o:
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

$(UNIT_VAR): uninit_var$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

duninit_var: uninit_var$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) -DDWPDS $(INCLUDE) $^ -o $@ $(LIBS)

$(LIVE_VAR): live_var$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

dlive_var: live_var$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) -DDWPDS $(INCLUDE) $^ -o $@ $(LIBS)

$(UNIT_VAR_PRE_O_POST): uninit_var.pre.o.post$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

duninit_var.pre.o.post: uninit_var.pre.o.post$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) -DDWPDS $(INCLUDE) $^ -o $@ $(LIBS)

$(TEST): test$(CXXSFX) $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDE) $^ -o $@ $(LIBS)

include ../Makefile.common

#include $(SRCS:$(CXXSFX)=.d) 

.PHONY: clean
clean:
	rm -rf *.d *.o *~ core $(BINARIES)
