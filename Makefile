SUBDIRS := $(wildcard */.)

all: $(SUBDIRS)

clean: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)