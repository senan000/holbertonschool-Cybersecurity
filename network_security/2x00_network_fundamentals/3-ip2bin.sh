#!/bin/bash
IP=$1
A=$(echo "$IP" | cut -d. -f1)
B=$(echo "$IP" | cut -d. -f2)
C=$(echo "$IP" | cut -d. -f3)
D=$(echo "$IP" | cut -d. -f4)
A=$(echo "obase=2; $A" | bc)
B=$(echo "obase=2; $B" | bc)
C=$(echo "obase=2; $C" | bc)
D=$(echo "obase=2; $D" | bc)
A=$(printf "%08d" "$A")
B=$(printf "%08d" "$B")
C=$(printf "%08d" "$C")
D=$(printf "%08d" "$D")
echo "$A.$B.$C.$D"
