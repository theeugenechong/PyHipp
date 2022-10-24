#!/bin/bash

find . -name "channel*" | grep -v -e eye -e mountain | sort | cut -d "/" -f 4 > chs1.txt

find . -name "firings.mda" | sort | cut -d "/" -f 3 > firings.txt

cwd=$(pwd); for i in $(comm -23 chs1.txt firings.txt); do echo $i; cd $(grep $i chs.txt); sbatch /data/src/PyHipp/sort-slurm.sh; cd $cwd; done
