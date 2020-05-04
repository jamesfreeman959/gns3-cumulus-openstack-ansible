# gns3-cumulus-openstack-ansible

A fully automated installation of openstack-ansible in a GNS3 environment, backed by Cumulus Networks switching

This OpenStack installation is based on this example deployment: https://docs.openstack.org/openstack-ansible/stein/user/ceph/full-deploy.html

The first step in building this project is to deploy the infrastructure in GNS3. Once this is complete, step through each numbered directory in turn and run through the steps in the ```README.md``` file. If you are using the Portable GNS3 project, the cloud-init ISO's are already generated and applied so it is sufficient to start with directory ```3-mgmt```.

By the end of 6-osansible, you should have a complete working HA setup of openstack-ansible 19 built in GNS3.

## System requirements

* GNS3 running on bare metal, on Linux (tested on Ubuntu Desktop 19.10)
* CPU based virtualization enabled (tested with Intel VT-d on an i7 3770)
* 48GB RAM minimum. Libvirt can use swap for VM memory, so you can extend if you have fast disk with swap. (tested with 32GB RAM and 32GB swap)
* 128GB disk space will be required for the GNS3 setup when it is built - SSD highly recommended
* Tested with GNS3 2.2.5

