MAKEFILE_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CONFIG_DIR := $(HOME)/.config

.PHONY: \
  help \
  link \
  unlink \
  link-yt-dlp \
  unlink-yt-dlp

help:
	@echo "make link"
	@echo "make unlink"

link: link-yt-dlp

unlink: unlink-yt-dlp

link-yt-dlp:
	mkdir -p $(CONFIG_DIR)
	ln -fs $(MAKEFILE_DIR)/yt-dlp $(CONFIG_DIR)

unlink-yt-dlp:
	rm -f $(CONFIG_DIR)/yt-dlp
