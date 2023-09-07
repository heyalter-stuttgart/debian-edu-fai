# Debian Edu FAI Installer

## Setup with script 'debian-edu-faiinstall'

To setup a Debian Edu machine as FAI installer for Debian Edu, the
``debian-edu-faiinstall`` script can be used, either on a the Debian Edu
mainserver or on a dedicated Debian Edu machine that shall act as a FAI server
on the network.

Before using ``debian-edu-faiinstall`` for the first time a few manual steps
need to be taken to prepare the server.  Please see below for the details.

The ``debian-edu-faiinstall`` is (i.e. should be) idempotent. So, it is
possible to execute it several times and it won't do any damage when
running repeatedly (except from re-creating all configs related to FAI).

When running ``debian-edu-faiinstall`` on a machine that already ships a
TFTP configuration for LTSP (which is the case for the Debian Edu mainserver
and for Debian Edu Terminal Servers) it will move that configuration out
of the way and replace it by the Debian Edu FAI configuration.

### Manual steps

#### Adjust the Debian Edu FAI configuration

Before running ``debian-edu-faiinstall``, please adjust the configuration file
`/etc/debian-edu/debian-edu-fai.conf`. That configuration file contains
parameter documentation in its comments, please follow suggestions etc. given
there.

#### Configure NFS exports

The directories `/srv/fai/config` and `/srv/fai/nfsroots.debian-edu-fai` need
to be exported via NFS.  There is a corresponding `exports` file
`/usr/share/debian-edu-fai/exports.d/debian-edu-fai.exports` which can be
copied to `/etc/exports.d`, afterwards `exportfs -ra` needs to be run for the
change to take effect.

#### SSH access of the FAI installer to the FAI server

At the end of a FAI installation, the FAI installer attempts to write its
installation logs back to the FAI server. This is done via SSH (using
pub/priv SSH key authentication).

To include this feature in your setup, make sure the following configuration
options are set in `/etc/debian-edu/debian-edu-fai.conf`:

```
fai_logserver="$(hostname -f)"
fai_loguser='fai'
```

and run the follwoing command as root:

```
runuser -u fai -- sh -c 'umask 077;
    ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N "" &&
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys &&
    ssh-keyscan -H "$(hostname -f)" >> ~/.ssh/known_hosts'
```
