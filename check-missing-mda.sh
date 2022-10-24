#!/bin/bash

find . -name "channel*" | grep -v -e eye -e mountain | sort | cut -d "/" -f 4 > chs1.txt

find . -name "firings.mda" | sort | cut -d "/" -f 3 > firings.txt

echo $(comm -23 chs1.txt firings.txt | wc -l) spike sorts not generated
