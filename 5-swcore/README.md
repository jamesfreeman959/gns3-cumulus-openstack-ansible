# Setting up the core switches

This playbook sets up the core switches in a spine-leaf topology, with layer 2 MLAG to set up resilient networking just as you would use in a real datacenter.

Run the playbook as follows to deploy the switch configuration - be sure to edit the inventory if you have changed the switch address, DNS name or credentials.
```
ansible-playbook -i inventory site.yml
```

However a bug in the ```nclu``` module of Ansible causes the playbooks to fail the first time it is run on each host, yet it succeeds on the second run. Not yet debugged/resolved. The easiest way to run the playbooks is to run it twice on each switch in turn - e.g.
```
ansible-playbook -i inventory site.yml --limit spine01*
```

