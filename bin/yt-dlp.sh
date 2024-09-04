#!/bin/bash

yt-dlp \
  -f 'bestvideo[height<=1080]+bestaudio' \
  -o "%(title)s-%(id)s.%(ext)s" \
  --merge-output-format \
  "$@"
