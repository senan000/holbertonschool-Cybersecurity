#!/bin/bash
IFS=. read -r a b c d <<< "$1"
IFS=. read -r w x y z <<< "$2"
echo "$((a & w)).$((b & x)).$((c & y)).$((d & z))"
