#!/bin/bash
echo "$(printf '%08d' "$(echo "obase=2; $(echo "$1" | cut -d. -f1)" | bc)").$(printf '%08d' "$(echo "obase=2; $(echo "$1" | cut -d. -f2)" | bc)").$(printf '%08d' "$(echo "obase=2; $(echo "$1" | cut -d. -f3)" | bc)").$(printf '%08d' "$(echo "obase=2; $(echo "$1" | cut -d. -f4)" | bc)")"
