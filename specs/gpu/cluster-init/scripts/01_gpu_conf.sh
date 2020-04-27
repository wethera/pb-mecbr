#!/bin/bash
set -ex
#Create link to gres.conf
ln -s /sched/gres.conf /etc/slurm/gres.conf
echo "Linked gres.conf file"

#Disable power mgmt
/usr/bin/nvidia-smi -pm 1
echo "NVIDIA power modulation disabled"

#Load nvidia_uvm module
modprobe nvidia_uvm
echo "NVIDIA UNified Memory Module loaded"