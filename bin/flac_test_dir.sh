#!/bin/bash

find "${1:-.}" -type f -iname "*.flac" -exec sh -c 'echo "{}" &&  flac -s -t "{}"' \;

