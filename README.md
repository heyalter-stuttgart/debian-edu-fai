# Debian Edu FAI Installer

## Setup with script 'debian-edu-faiinstall'

To setup a Debian Edu machine as FAI installer for Debian Edu, simply run
the ``debian-edu-faiinstall`` script either on a the Debian Edu mainserver
or on a dedicated Debian Edu machine that shall act as a FAI server on
the network.

The ``debian-edu-faiinstall`` is (i.e. should be) idempotent. So, it is
possible to execute it several times and it won't do any damage when
running repeatedly (except from re-creating all configs related to FAI).

When running ``debian-edu-faiinstall`` on a machine that already ships a
TFTP configuration for LTSP (which is the case for the Debian Edu mainserver
and for Debian Edu Terminal Servers) it will move that configuration out
of the way and replace it by the Debian Edu FAI configuration.

## Manual steps

Only a few steps are required manually before executing
``debian-edu-faiinstall`` the first time.

### Adjust the Debian Edu FAI configuration

Before running ``debian-edu-faiinstall``, please adjust the configuration file
``/etc/debian-edu/faiinstall.conf``. That configuration file contains parameter
documentation in its comments, please follow suggestions etc. given there.

### SSH access of the FAI installer to the FAI server

At the end of a FAI installation, the FAI installer attempts to write its
installation logs back to the FAI server. This is done via SSH (using
pub/priv SSH key authentication).

To include this feature in your setup, please run these commands (with
some interactions of pressing the <ENTER> key) from the command line as
super-user root on your FAI server:

```
$ su - fai
$ ssh-keygen
$ cat ~fai/.ssh/id_rsa.pub >> ~fai/.ssh/authorized_keys
$ ssh fai@$(hostname -s)
### accept host key with 'yes'
$ ssh fai@$(hostname -f)
### accept host key with 'yes'
$ ssh fai@$(hostname -I | cut -d" " -f1)
### accept host key with 'yes'
```
