#!/bin/bash
sudo apt-get clean -y
sudo apt-get autoclean -y
sudo apt-get autoremove --purge -y
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*
sudo sync
echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null
sudo journalctl --vacuum-time=7d
