# Setting up the management switch

Our GNS3 network topology has ```eth0``` on all nodes set up as the out-of-band management port. This playbook sets up a single Cumulus Networks switch as a simple layer 2 switch to handle all out-of-band management traffic.

Run the playbook as follows to deploy the switch configuration - be sure to edit the inventory if you have changed the switch address, DNS name or credentials.
```
ansible-playbook -i inventory site.yml
```

However a bug in the ```nclu``` module of Ansible causes the playbooks to fail the first time it is run on each host, yet it succeeds on the second run. Not yet debugged/resolved. 

