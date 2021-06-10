
#! /bin/bash

for ((i=1;i<=150;i++))
do
od -vAn -N2 -tu2 < /dev/random | cat >> numbers.txt
done

