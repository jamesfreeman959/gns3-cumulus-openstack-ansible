KEYNAME=mgmtnet

sshkey: 
	ssh-keygen -b 2048 -t rsa -f ./$(KEYNAME)-id_rsa -q -N ""
