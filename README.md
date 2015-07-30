lxc_create:

Creates two ubuntu system containers and adds 'stress' binary in order to test high CPU usage.


lxc_stress:

On one container, simulate 8 threads of high CPU load on 4 CPU cores to observe thread preemption. Then, on two containers, simulate 4 threads of high CPU load to observe container preemption. 
