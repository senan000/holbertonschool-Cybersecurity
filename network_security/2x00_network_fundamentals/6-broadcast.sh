#!/bin/bash
IFS=. read -r a b c d <<< "$1"; IFS=. read -r w x y z <<< "$2"; printf "%s\n" "$((a | (255 ^ w))).$((b | (255 ^ x))).$((c | (255 ^ y))).$((d | (255 ^ z)))"
