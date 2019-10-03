#! /bin/bash

### Disabling the below FAI default, as we want hostnames
### with domain suffixed during installation of Debian Edu
### systems.

# use short hostname instead of FQDN
#export HOSTNAME=${HOSTNAME%%.*}
#if [ $do_init_tasks -eq 1 ]; then
#  echo $HOSTNAME > /proc/sys/kernel/hostname
#fi
