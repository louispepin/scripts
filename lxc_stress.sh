#!/bin/bash

# Start lttng session - make sure lttng-sessiond is running as root
sudo lttng create lxc_experiment
sudo lttng enable-event -a -k
sudo lttng start

# Stress containers
sudo lxc-start -d -n c_1 -- stress --cpu 4 --timeout 5
sudo lxc-start -d -n c_2 -- stress --cpu 4 --timeout 5 
sleep 5s

# Clean up
sudo lttng stop
sudo lttng destroy

echo 'Done!'
exit 0
