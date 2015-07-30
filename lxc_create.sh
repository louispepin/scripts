#/bin/bash

# Installs packages necessary for the creation of lxc containers and
# creates two containers (c_1 and c_2) which are used in the lxc_stress.sh
# script. 

sudo apt-get install lxc stress 
sudo lxc-create -t ubuntu -n c_1 
sudo lxc-create -t ubuntu -n c_2 

# Add stress binary to containers
sudo cp /usr/bin/stress /var/lib/lxc/c_1/rootfs/bin/stress
sudo cp /usr/bin/stress /var/lib/lxc/c_2/rootfs/bin/stress

echo 'Done!'
exit 0
