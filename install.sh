#!/bin/bash

clear
for i in $(ls -a /home/batan/.dot/);
do
mv /home/batan/.dot/$i /home/batan/.$i
done
