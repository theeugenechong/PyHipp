#!/bin/bash

# To be run inside day directory
find . -name "channel*" | grep -v -e eye -e mountain | sort > chs.txt

find . -name "rplhighpass*hkl" | grep -v -e eye | sort | cut -d "/" -f 1-4 > hps.txt

echo $(comm -23 chs.txt hps.txt | wc -l) jobs to submit
