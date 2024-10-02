#!/bin/bash
sudo trash /home/batan/dot/.git
clear
for i in $(ls -A /home/batan/.dot/);
do
if [[ -f /home/batan/.$i ]]; then
sudo mv /home/batan/.$i /home/batan/.$i.$(date +%j).bak
echo -e "\033[35m   >>>   \033[31m Moved \033[34m/home/batan/.$i \033[31m to \033[34m/home/batan/.$i.$(date +%j).bak\033[0m"
fi
done
echo -e "\033[36m===============================================================================\033[0m"

for i in $(ls -A /home/batan/.dot/);
do
  if [[ "$i" != "task" && "$i" != "mpd" && "$i" != "." && "$i" != ".."  ]]; then
sudo cp /home/batan/.dot/$i /home/batan/.$i
echo -e "\033[35m   >>>   \033[31m Copied \033[34m/home/batan/.dot/.$i \033[31m to \033[34m/home/batan/.$i\033[0m"
fi
done
echo -e "\033[36m===============================================================================\033[0m"

if [[ ! -d /home/batan/.mpd/ ]]; then
sudo mkdir -p /home/batan/.mpd/
sudo cp /home/batan/.dot/mpd/* /home/batan/.mpd/
for i in $(ls /home/batan/.dot/mpd/);do
echo -e "\033[35m   >>>   \033[31m Copied \033[34m$i \033[31m to \033[34m/home/batan/.mpd/\033[0m"
done
fi
echo -e "\033[36m===============================================================================\033[0m"


if [[ ! -d /home/batan/.task ]]; then
sudo mkdir -p /home/batan/.task/
sudo cp -r /home/batan/.dot/task/* /home/batan/.task/
for i in $(ls /home/batan/.dot/task/);do
echo -e "\033[35m   >>>   \033[31m Copied \033[34m$i \033[31m to \033[34m/home/batan/.task/\033[0m"
done
fi
echo -e "\033[36m===============================================================================\033[0m"



echo "DONE"



