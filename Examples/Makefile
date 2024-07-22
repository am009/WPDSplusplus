
DIRS=csurf GenKill interrupt substrings tfa Reach

default:
	@echo "No default in this Makefile."



check clean baselines:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i $@; \
		if [[ $$? -ne 0 ]]; then exit 1; fi \
	done

