#!/bin/bash

clear
for i in $(ls -a);
do
mv $i /home/batan/.$i
done
