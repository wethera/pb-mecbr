#!/bin/bash
set -ex
#Create link to gres.conf
ln -s /sched/gres.conf /etc/slurm/gres.conf
#Disable power mgmt
/usr/bin/nvidia-smi -pm 1
