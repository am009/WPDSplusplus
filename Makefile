#CXX=/change
CXX=g++
INCLUDE=-I.
#DEBUGFLAGS=-ggdb
DEBUGFLAGS=-ggdb -DDBGWPDS
#DEBUGFLAGS=-ggdb -pg -DDBGWPDS
CXXBASE=-Wall -W -Werror -Wformat=2 -O2
CXXFLAGS=$(CXXBASE) $(DEBUGFLAGS) $(CXXEXTRA)
CXXSFX=.cpp

WPDS_HDRS=CA.h  catransition.h \
	common.h dictionary.h HashMap.h hm_hash.h ref_ptr.h \
	Rule.h Schema.h SaturationProcess.h semiring.h WPDS.h \
	keys.h key_source.h inst_counter.h myallocator.h \
	RuleExtender.h Traits.h Witness.h zero_alloc.h \
	EWPDS.h ERule.h ESaturationProcess.h ERuleExtender.h confluence_functions.h

WPDS_SRCS=dictionary$(CXXSFX) common$(CXXSFX) keys$(CXXSFX) key_source$(CXXSFX)
WPDS_OBJS=$(WPDS_SRCS:$(CXXSFX)=.o)
BINARIES= libwpds.a libwpds++.a
LIBWPDS=libwpds.a
LIBWPDS++=libwpds++.a
all: $(BINARIES)

.PHONY: clean
clean:
	rm -f *.o *.d *~ core $(BINARIES)
	cd Examples && $(MAKE) $@

.PHONY: check
check: $(LIBWPDS)
	make -C Examples check

.PHONY: html
html:
	doxygen Doxyfile

%.d: %$(CXXSFX)
	set -e; $(CXX) -M $(CXXFLAGS) $< \
	| sed 's/\($*\)\.o[ :]*/\1.o $@ : /g' > $@; \
	[ -s $@ ] || rm -f $@

libwpds.a: $(WPDS_OBJS)
	ar rcsv $@ $^

libwpds++.a: $(WPDS_OBJS)
	ar rcsv $@ $^

.SILENT:
.SUFFIXES: $(CXXSFX) .o

$(CXXSFX).o:
	echo Compiling $@...
	$(CXX) $(CXXFLAGS) $(INCLUDE) -o $@ -c $<

include $(WPDS_SRCS:$(CXXSFX)=.d)
