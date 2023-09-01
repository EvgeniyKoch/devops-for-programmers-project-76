galaxy_install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook -i inventory.yml --ask-vault-pass playbook.yml

deploy_vault:
	ansible-playbook -i inventory.yml --vault-password-file vault_password playbook.yml
