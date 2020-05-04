HOSTNAME=mgmt01

iso: 
	sed -e 's/^/      /g' ../../mgmtnet-id_rsa > tmpkey
	sed -e '/zzz_ssh_privkey/{r tmpkey' -e 'd}' user-data.tmpl | awk 'BEGIN{getline l < "../../mgmtnet-id_rsa.pub"}/zzz_ssh_pubkey/{gsub("zzz_ssh_pubkey",l)}1' > user-data
	rm -f tmpkey
	genisoimage -output seed-$(HOSTNAME).iso -volid cidata -joliet -rock user-data meta-data network-config
	rm -f user-data
