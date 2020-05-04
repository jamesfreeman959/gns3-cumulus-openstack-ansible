# cloud-init

Each directory contains the files necessary for cloud-init to initialize each Ubuntu node at boot time. To generate the isos, first of all ensure that you have created a private SSH key for authentication over your out-of-band management network. This should exist in the top level directory of this working copy, and be called ```mgmtnet-id_rsa```. You can optionally run ```make``` in this directory to create the key for you if you wish.

Once complete, simple change into each directory and run:
```
make
```
This will create an ISO for each virtual host sufficient to perform all post-initial boot configuration. 
