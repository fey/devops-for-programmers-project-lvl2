ping:
	ansible -i inventory.yaml all -m ping

uptime:
	ansible -i inventory.yaml all -a "uptime"
