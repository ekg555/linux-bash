#!/bin/bash

#  GETSPEX.SH
# =============================
#  - Get Specs for server
# ======================

zipfile=$HOSTNAME.specs.zip

smem > $HOSTNAME.smem.txt
lscpu > $HOSTNAME.lscpu.txt
lspci > $HOSTNAME.lscpi.txt
cat /proc/meminfo > $HOSTNAME.meminfo.txt
cat /proc/cpuinfo > $HOSTNAME.cpuinfo.txt
zip $zipfile $HOSTNAME.*.txt
rm $HOSTNAME.*.txt

printf "\n========================\nsaved %s\n========================\n" $zipfile

exit 1
