# test for SMING_HOME

#undefine SMING_HOME

ifdef SMING_HOME_INITIAL
	SMING_HOME=$(SMING_HOME_INITIAL)
endif

include $(MF)

# put into define??
ifeq ($(abspath $(SMING_HOME)),$(abspath $(SMING_HOME_EXPECTED)))
	R:="=====Success!========="
else
#   R:="### Failed: expected: $(SMING_HOME_EXPECTED) actual: $(SMING_HOME)"
	R:="\#\#\#\#\#\#Failed: expected: <$(SMING_HOME_EXPECTED)> actual: <$(SMING_HOME)> \#\#\#\#\#"
endif

test:
#	@echo "SMING_HOME=$(SMING_HOME)"
#	@echo "SMING_HOME_EXPECTED=$(SMING_HOME_EXPECTED)"
	@echo result='$(R)'
#	@echo $(UNAME)
.PHONY: test