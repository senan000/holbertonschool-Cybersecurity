#!/bin/bash
tracepath "$1" 2>/dev/null | awk '/^[[:space:]]*[0-9]+:/ {n=$1; sub(":","",n); last=n} END {print last+0}'
