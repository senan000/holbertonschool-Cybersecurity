#!/bin/bash
DEC=$1
BIN=""
for ((i=7; i>=0; i--)); do
    BIT=$(( (DEC >> i) & 1 ))
    BIN="${BIN}${BIT}"
done
echo "$BIN"
