MAKEFILE_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
SERVICES_DIR := $(HOME)/Library/Services

.PHONY: link unlink

help:
	@echo "make link   - Link all actions to ~/Library/Services"
	@echo "make unlink - Unlink all actions from ~/Library/Services"

link:
	ln -fs $(MAKEFILE_DIR)/play-file-in-mpv.workflow $(SERVICES_DIR)
	ln -fs $(MAKEFILE_DIR)/play-url-in-mpv.workflow  $(SERVICES_DIR)
	ln -fs $(MAKEFILE_DIR)/download-url.workflow  $(SERVICES_DIR)

unlink:
	rm -f $(SERVICES_DIR)/play-file-in-mpv.workflow
	rm -f $(SERVICES_DIR)/play-url-in-mpv.workflow
	rm -f $(SERVICES_DIR)/download-url.workflow

