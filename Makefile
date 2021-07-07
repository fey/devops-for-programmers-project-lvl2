setup: prepare-vault-password install

prepare-vault-password:
	touch vault-password

set-vault-password:
	echo "$(PASSWORD)" > vault-password

install:
	ansible-galaxy install -r requirements.yml

ping:
	ansible -i inventory.yml all -m ping

uptime:
	ansible -i inventory.yml all -a "uptime"

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault-password

create-vault:
	ansible-vault create $(FILE) --vault-password-file vault-password

edit-vault:
	ansible-vault edit $(FILE) --vault-password-file vault-password

view-vault:
	ansible-vault view $(FILE) --vault-password-file vault-password
