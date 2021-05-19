install:
	ansible-galaxy install -r requirements.yml

ping:
	ansible -i inventory.yml all -m ping

uptime:
	ansible -i inventory.yml all -a "uptime"

deploy:
	ansible-playbook playbook.yml --vault-password-file vault-password -i inventory.yml
