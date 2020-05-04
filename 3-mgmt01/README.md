# Setting up the management node

This playbook is intended to be run directly on the management node (```mgmt01```). If you are running it from another host, be sure to edit the inventory file accordingly.

Note that this playbook sets up a DHCP server with static DHCP leases, and also a DNS server with relevant hostnames for all nodes on the management node. If you change any of the MAC addresses of the topology, be sure to update the appropriate files in the ```files/``` directory before running the playbook.

Run the playbook once ready with the following command:
```
ansible-playbook -i inventory site.yml
```
