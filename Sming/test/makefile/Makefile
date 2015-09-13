# Tests for make
# TODO: the tests will be probably behave differently under various OSes

# makefile under test
export MF_DIR=$(CURDIR)/../..
export MF=Makefile


# Strategy: prepare environment, call test object

MAKEFILE_DIR:= $(dir $(abspath $(lastword $(MAKEFILE_LIST))))


TESTS=test_undefined test_lowercase_drive_with_forward_slash test_uppercase_drive_with_backward_slash test_mixed_elements

#include $(MF)
tests: $(TESTS)

test_undefined:
	@echo "$@"
	@$(MAKE) --no-print-directory -f $(CURDIR)/Makefile-SMING_HOME.mk -C $(MF_DIR) test  SMING_HOME_EXPECTED=$(abspath $(MF_DIR))
	
test_lowercase_drive_with_forward_slash:
	@echo "$@"
	@$(MAKE) --no-print-directory -f $(CURDIR)/Makefile-SMING_HOME.mk -C $(MF_DIR) test SMING_HOME_INITIAL=c:/bla SMING_HOME_EXPECTED=/c/bla
test_uppercase_drive_with_backward_slash:
	@echo "$@"
	@$(MAKE) --no-print-directory -f $(CURDIR)/Makefile-SMING_HOME.mk -C $(MF_DIR) test SMING_HOME_INITIAL=C:\bla\foo SMING_HOME_EXPECTED=/C/bla/foo

test_mixed_elements:
	@echo "$@"
	@$(MAKE) --no-print-directory -f $(CURDIR)/Makefile-SMING_HOME.mk -C $(MF_DIR) test SMING_HOME_INITIAL=C:\bla\foo SMING_HOME_EXPECTED=/C/bla/foo

	
.PHONY: tests $(TESTS)